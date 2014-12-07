package package1;

public class Test1
{
   public String test () { return this.getClass().getName () + " from " + this.getClass().getProtectionDomain().getCodeSource().getLocation(); }
}
