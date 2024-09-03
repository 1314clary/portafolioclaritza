using System;
using System.Collections.Generic;
using System.Text;

namespace Serie_de_numeros
{

	class Program
	{

		public static void Main()
		{
			Console.WriteLine("Ingrese cuatro numeros");

			int a = Convert.ToInt32(Console.ReadLine());
			int b = Convert.ToInt32(Console.ReadLine());
			int c = Convert.ToInt32(Console.ReadLine());
			int d = Convert.ToInt32(Console.ReadLine());

			if (a == b || a == c || a == d || b == c || b == d || c == d) { Console.WriteLine("Los números no pueden ser iguales"); }
			else if (a > b && a > c && a > d) { Console.WriteLine("El número mayor es " + a); }
			else if (b > a && b > c && b > d) { Console.WriteLine("El número mayor es " + b); }
			else if (c > a && c > b && c > d) { Console.WriteLine("El número mayor es " + c); }
			else if (d > a && d > b && d > c) { Console.WriteLine("El número mayor es" + d); }
		}
	}
}