package hey

import hey.foo.Fooh

object Hi {
  def p(x: Int) = x * x

  assert(p(3) == 9)

  def main(args: Array[String]) = {
    //require (args.length >= 1)

    if (args.length >= 1) {
      println("first arg is " + args(0))
    }

    Fooh.bar
    HeyJava.hey()
  }
}
