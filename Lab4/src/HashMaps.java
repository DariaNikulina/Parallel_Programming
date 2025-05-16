import java.util.*;
import java.util.concurrent.*;

public class HashMaps {

    public static final int THREADS = 20;
    public static final int ITERATIONS = 2000000;
    public static final double NSEC = 1000_000_000.0;
    public static final int MAP_SIZE = 30;

    public static Map<String, Integer> hashMap = new HashMap<>();
    public static Map<String, Integer> hashTable = new Hashtable<>();
    public static Map<String, Integer> syncMap = Collections.synchronizedMap(new HashMap<>());
    public static Map<String, Integer> cHashMap = new ConcurrentHashMap<>();

    public static void main(String[] args) {
        double hashMapTime = compute(hashMap) / NSEC;
        double hashTableTime = compute(hashTable) / NSEC;
        double syncMapTime = compute(syncMap) / NSEC;
        double cHashMapTime = compute(cHashMap) / NSEC;

        System.out.println("Время выполнения:");
        System.out.printf("\tHashMap: %.3f s,\n\tHashTable: %.3f s,\n\tSyncMap: %.3f s,\n\tConcurrentHashMap: %.3f s.%n",
                hashMapTime, hashTableTime, syncMapTime, cHashMapTime);
    }

    private static long compute(Map<String, Integer> map) {
        System.out.printf("\t%s\n", map.getClass().getName());
        long start;
        long stop;
        long totalTime = 0;

        map.clear();
        start = System.nanoTime();

        List<Callable<String>> tasks = new ArrayList<>();
        List<Future<String>> results;

        // create a list of tasks
        for (int i = 0; i < THREADS; i++) {
            tasks.add(() -> {
                String threadName = Thread.currentThread().getName();
                for (int j = 0; j < ITERATIONS; j++) {
                    String key = String.valueOf( j % MAP_SIZE);
                    map.put(key, j);
                }
                return "Поток " + threadName + " завершен";
            });
        }

        try (ExecutorService executorService = Executors.newFixedThreadPool(THREADS)) {
            try {
                results = executorService.invokeAll(tasks);
                for (Future<String> result : results) {
                    result.get();
                }
            } catch (InterruptedException | ExecutionException ie) {
                ie.printStackTrace();
                Thread.currentThread().interrupt();
            }
        }

        stop = System.nanoTime();
        totalTime += (stop-start);

        int size = map.size();
        System.out.println("Размер map: " + size);
        if (size > MAP_SIZE) {
            System.out.printf("Ошибка: размер превышает ожидаемый %d!%n", MAP_SIZE);
        } else if (size < MAP_SIZE) {
            System.out.println("Ошибка: некоторые ключи потеряны!");
        } else {
            System.out.println("Размер корректен.");
        }
        System.out.println("...done.");
        return totalTime;
    }
}