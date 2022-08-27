

namespace TaskTest
{
    internal class Program
    {

        static string message = "";
        static void Main(string[] args)
        {
            Console.WriteLine("Hello, World!args={0}", (args.Length > 0) ? args[0] : "NA");
            message = (args.Length > 0) ? args[0] : "NA";
            TimerCallback callback = new TimerCallback(doing);


            System.Threading.Timer timer = new System.Threading.Timer(callback, null, 1000, 1000);
            while (true) { 
            
                Thread.Sleep(1000);
            }
            //var timer = new System.Threading.Timer(o => { Console.WriteLine("value={0}", (args.Length > 0) ? args[0] : "NA"); }, 1000, 0);


        }

        private static void doing(object state)
        {
            Console.WriteLine("...,{0}",message); 



        }
     
    }
}