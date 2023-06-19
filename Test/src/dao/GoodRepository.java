package dao;

import java.util.ArrayList;

import dto.Goods;

public class GoodRepository {
	private ArrayList<Goods> listOfGoods = new ArrayList<Goods>();
	private static GoodRepository instance = new GoodRepository();
	
	public static GoodRepository getInstance() {
		return instance;
	}
	public ArrayList<Goods> getAllGoods() {
		return listOfGoods;
	}
	public Goods getGoodById(String goodId) {
		Goods GoodById = null;
		
		for(int i = 0; i<listOfGoods.size(); i++) {
			Goods goods = listOfGoods.get(i);
			if(goods != null && goods.getgoodID() != null && goods.getgoodID().equals(goodId)) {
				GoodById = goods;
				break;
			}
		}
		return GoodById;
	}
	public void Goods(Goods good) {
		listOfGoods.add(good);
	}
}
