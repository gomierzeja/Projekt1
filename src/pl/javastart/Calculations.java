package pl.javastart;

import java.util.ArrayList;

public class Calculations {

    public static double sumPrice(ArrayList<Product> listOfProducts){
        double sum=0;
        for(int i=0; i<=listOfProducts.size()-1; i++){
            sum=sum+listOfProducts.get(i).getPrice();
        }
        return sum;
    }


    public static double avPrice(ArrayList<Product> listOfProducts){
        double average=sumPrice(listOfProducts)/listOfProducts.size();
        return average;
    }
}
