/* 
the length of the nested arrays depends on the number of bricks in one row
of course this could be done automatically, but since I have a static number of  
12 defined in the game class under bricksPerRow I won't need to make this more complicated. 
*/

// https://www.youtube.com/watch?v=qYIe2aXTeOY&list=PLht-7jHewMA6Wywk_bk0RnD4OvHZ5qL2c&index=15
int[][] level1 = {
  {1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0},
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
};

void buildLevel(int[][] level){
  for(int i = 0; i < level.length; i++){
    for(int j = 0; j < level[i].length; j++){
      
    }
  }
}
