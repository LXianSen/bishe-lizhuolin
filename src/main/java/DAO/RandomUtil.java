package DAO;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Random;
import java.util.Set;

/**
 * ������-�����
 */
public class RandomUtil {

    /**
     * ��ȡ��a��z������Ϊlength�����
     *
     * @return
     */
    public static String getRandomStr(int length) {
        String base = "abcdefghijklmnopqrstuvwxyz";
        Random random = new Random();
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < length; i++) {
            int number = random.nextInt(base.length());
            sb.append(base.charAt(number));
        }
        return sb.toString();
    }

    /**
     * ��ȡ��Χ��intֵ
     *
     * @param ��ȡ��Χ��intֵ
     * @return
     */
    public static int getRandomRange(int max, int min) {
        return (int) (Math.random() * (max - min) + min);
    }

    /**
     * ��ȡ�����������ַ�
     *
     * @param length
     *            base
     * @return
     */
    public static String getRandomString(int length, String base) { // length��ʾ�����ַ����ĳ���
        Random random = new Random();
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < length; i++) {
            int number = random.nextInt(base.length());
            sb.append(base.charAt(number));
        }
        return sb.toString();
    }

    /**
     * ��ȡ�����������ַ�
     *
     * @param length
     * @return
     */
    public static String getRandomString(int length) { // length��ʾ�����ַ����ĳ���
        String base = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        Random random = new Random();
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < length; i++) {
            int number = random.nextInt(base.length());
            sb.append(base.charAt(number));
        }
        return sb.toString();
    }

    /**
     * ��ȡ��������������
     *
     * @param length
     * @return
     */
    public static String getRandomNumString(int length) { // length��ʾ�����ַ����ĳ���
        String base = "0123456789";
        Random random = new Random();
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < length; i++) {
            int number = random.nextInt(base.length());
            sb.append(base.charAt(number));
        }
        return sb.toString();
    }

    /**
     * �����������
     *
     * @param start
     *            ��ʼֵ
     * @param end
     *            ����ֵ
     * @return
     */
    public static int[] getRangRandom(int start, int end) {
        return getRangRandom(start, end, end - start + 1);
    }

    /**
     * ����ָ����Χָ�������Ĳ��ظ��������
     *
     * @param start
     * @param end
     * @param num
     * @return
     */
    public static int[] getRangRandom(int start, int end, int num) {

        int length = end - start + 1;
        // �������Ϸ�
        if (length < 1 || num > length) {
            return null;
        } else {
            int[] numbers = new int[length];
            int[] result = new int[num];
            // ѭ������ʼֵ
            for (int i = 0; i < length; i++) {
                numbers[i] = i + start;
            }
            Random random = new Random();
            // ȡrandomMax����
            for (int i = 0; i < num; i++) {
                // �����ȡȡ����λ��
                int m = random.nextInt(length - i) + i;
                result[i] = numbers[m];
                // ����λ��
                int temp = numbers[m];
                numbers[m] = numbers[i];
                numbers[i] = temp;
            }
            return result;
        }
    }

    /*
     * ����6λ�������֤��
     */
    public static String code() {
        Set<Integer> set = GetRandomNumber();
        Iterator<Integer> iterator = set.iterator();
        String temp = "";
        while (iterator.hasNext()) {
            temp += iterator.next();
        }
        return temp;
    }

    public static Set<Integer> GetRandomNumber() {
        Set<Integer> set = new HashSet<Integer>();
        Random random = new Random();
        while (set.size() < 6) {
            set.add(random.nextInt(10));
        }
        return set;
    }
}