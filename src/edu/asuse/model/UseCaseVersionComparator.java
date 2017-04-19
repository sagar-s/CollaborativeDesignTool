package edu.asuse.model;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.json.JSONException;
import org.json.JSONObject;

public class UseCaseVersionComparator {
	public static List<ComparisonResults> compare(String version1, String version2){
		List<ComparisonResults> list =  new ArrayList<ComparisonResults>();
		try {
			JSONObject jsonObj1 = new JSONObject(version1);
			JSONObject jsonObj2 = new JSONObject(version2);
			Iterator<?> keys = jsonObj1.keys();
			while( keys.hasNext() ) {
				ComparisonResults obj = new ComparisonResults();
			    obj.setField((String)keys.next());
			    String line1 = jsonObj1.getString(obj.getField().trim());
			    String line2 = jsonObj2.getString(obj.getField().trim());
			    if(line1.equals(line2))obj.setEqual(true); 
			    else obj.setEqual(false);
			    obj.setAdditions(line1);obj.setDeletions(line2);
			    if(line1.trim().length()>0 || line2.trim().length()>0)list.add(obj);
			}
			System.out.println(list);
			
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
