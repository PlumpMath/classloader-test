package package2;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class Test2Dynamic
{
   public static void main (String[] args) throws ClassNotFoundException, InstantiationException, IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException
   {
      Class<?> cls = Test2.class.getClassLoader().loadClass("package1.Test1");
      Object obj = cls.newInstance();
      Method mtd = cls.getMethod("test");
      System.out.println (mtd.invoke(obj));
   }
}
