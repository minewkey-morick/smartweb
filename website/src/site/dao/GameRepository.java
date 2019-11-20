package site.dao;

import java.util.ArrayList;

import site.dto.Game;

public class GameRepository {

	private ArrayList<Game> listOfGames=new ArrayList<Game>();
	private static GameRepository instance=new GameRepository();

	public static GameRepository getInstance() {
		return instance;
	}
	
	public GameRepository() {
		Game game1=new Game();
		game1.setGameNum("P1");
		game1.setGname("보드게임1");
		game1.setLink("null");
		game1.setDescription("기본1");
		game1.setFilename("p1.jpg");

		Game game2=new Game();
		game2.setGameNum("P2");
		game2.setGname("보드게임2");
		game2.setLink("null");
		game2.setDescription("기본2");
		game2.setFilename("p2.jpg");

		Game game3=new Game();
		game3.setGameNum("P3");
		game3.setGname("보드게임3");
		game3.setLink("null");
		game3.setDescription("기본3");
		game3.setFilename("p3.jpg");

		listOfGames.add(game1);
		listOfGames.add(game2);
		listOfGames.add(game3);
	}

	public ArrayList<Game> getAllGames(){
		return listOfGames;
	}

	public Game getGameByNum(String GameNum) {
		Game GameByNum=null;

		for(int i = 0;i<listOfGames.size();i++) {
			Game game=listOfGames.get(i);
			if(game !=null && game.getGameNum()!=null && game.getGameNum().equals(GameNum)) {
				GameByNum=game;
				break;
			}
		}
		return GameByNum;
	}
	public void addGame(Game game) {
		listOfGames.add(game);
	}
}
