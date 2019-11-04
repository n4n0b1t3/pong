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

/* Level building function

  helps to create levels based on a simple two dim array.
  Currently implemented as 1 = create brick, 0 = don't create brick at that position.
  Can be expanded with all kind of markers for other type of tiles
*/
Brick[] buildLevel(Game game, int[][] level){
  Brick[] bricks = {};
  int distanceFromTop = 20;
  for(int i = 0; i < level.length; i++){ //<>//
    for(int j = 0; j < level[i].length; j++){
      /* https://processing.org/reference/append_.html
      When using an array of objects, the data returned from the function must be cast to the object array's data type. For example: SomeClass[] items = (SomeClass[]) append(originalArray, element)
      */
      if(level[i][j]==1){
        bricks = (Brick[])append(bricks, new Brick(game, game.brickWidth * j, distanceFromTop + game.brickHeight * i));
      }
    }
  }
  return bricks;
}
