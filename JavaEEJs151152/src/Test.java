import java.util.HashMap;
import java.util.Map;
import java.util.Set;




public class Test {

	public static void main(String[] args) {

/*
		Map student=new HashMap();
		student.put(1, "田");
		student.put(211, "王");
		student.put(367, "徐");
		
		Set sno=student.keySet();
		Object[] s=sno.toArray();
		
		int length=s.length;
		int i=0;
		while(i<length){
			System.out.println((int)s[i]);
			i++;
		}
		
		
		*/
		
	Map stu=new HashMap();
	stu.put(1,"zhangsan");
	stu.put(22,"lisi");
	stu.put(78,"wangwu");
	
	Set s=stu.keySet();
	Object[] sno=s.toArray();
	
	for(int i=0;i<sno.length;i++){
		System.out.println((int)sno[i]);
	}
	

	}

}
