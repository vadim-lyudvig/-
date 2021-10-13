using System;

namespace Lab1_for_
{
    class Program
    {
        static void Main(string[] args)
        {
            int n;
            Console.WriteLine("Введите размерность массива");
            n = Convert.ToInt32(Console.ReadLine());
            int[] array = new int[n];
            Console.WriteLine("Введите элементы массива");
            for (int i = 0; i < n; i++)
            {
                Console.Write("array[" + (i) + "]=");
                array[i] = Convert.ToInt32(Console.ReadLine());
            }
            int minIndex = 0;
            int min = array[0];
            int maxIndex = 0;
            int max = array[0];
            for (int i = 0; i < array.Length; i++)
            {
                if (array[i] > max)
                {
                    max = array[i];
                    maxIndex = i;
                }
                if (array[i] < min)
                {
                    min = array[i];
                    minIndex = i;
                }
            }
            if (maxIndex < minIndex)
            {
                Console.WriteLine("Максимальное число " + max + " левее " + min + " на " + (minIndex - maxIndex) + " позиций ");
            }
            else
            {
                Console.WriteLine("Минимальное число " + min + " левее " + max + " на " + (maxIndex - minIndex) + " позиций ");
            }
            Console.ReadKey();
        }
    }
}
