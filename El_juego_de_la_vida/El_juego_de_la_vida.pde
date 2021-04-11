int cell = 10;
int [][] actual;
int [][] futuro;
int vecino;
int vel = 100;
boolean pausa = true;
void setup(){
  size(1200,1200);
  stroke(60);
  actual = new int[height/cell][width/cell];
  futuro = new int[height/cell][width/cell];
  for(int i = 0; i < height/cell; i++){
    for(int j = 0; j < width/cell; j++){
      actual[i][j] = 0;
      futuro[i][j] = 0;
    }
  }
}
void draw(){
  background(0);
  for(int i = 0; i < height/cell; i++){
    for(int j = 0; j < width/cell; j++){
      if(actual[i][j] == 1){
        fill(0, 255, 0);
      }
      else{
        fill(0);
      }
      rect(cell*i,cell*j,cell,cell);
    }
  }
  if(!pausa){
    delay(vel);
    evolucion();
  }
}
void keyPressed(){
  if(key == ' '){
    pausa = !pausa;
  }
  if(key == '-'){
    vel += 1;
  }
  if(key == '+' && vel > 0){
    vel -= 1; 
  }
  if(key == '1'){
    for(int i = 0; i < height/cell; i++){
      for(int j = 0; j < width/cell; j++){
        actual[i][j] = 0;
      }
    }
    actual[1][26] = 1;
    actual[2][26] = 1;
    actual[2][24] = 1;
    actual[3][14] = 1;
    actual[3][15] = 1;
    actual[3][22] = 1;
    actual[3][23] = 1;
    actual[3][36] = 1;
    actual[3][37] = 1;
    actual[4][13] = 1;
    actual[4][17] = 1;
    actual[4][22] = 1;
    actual[4][23] = 1;
    actual[4][36] = 1;
    actual[4][37] = 1;
    actual[5][3] = 1;
    actual[5][2] = 1;
    actual[5][12] = 1;
    actual[5][18] = 1;
    actual[5][23] = 1;
    actual[5][22] = 1;
    actual[6][3] = 1;
    actual[6][2] = 1;
    actual[6][12] = 1;
    actual[6][16] = 1;
    actual[6][18] = 1;
    actual[6][19] = 1;
    actual[6][24] = 1;
    actual[6][26] = 1;
    actual[7][12] = 1;
    actual[7][18] = 1;
    actual[7][26] = 1;
    actual[8][13] = 1;
    actual[8][17] = 1;
    actual[8][13] = 1;
    actual[9][14] = 1;
    actual[9][15] = 1;
  }
  if(key == '2'){
    for(int i = 0; i < height/cell; i++){
      for(int j = 0; j < width/cell; j++){
        actual[i][j] = 0;
      }
    }
    actual[1][10]=1;
    actual[1][11]=1;
    actual[1][12]=1;
    actual[1][16]=1;
    actual[1][17]=1;
    actual[1][18]=1;
    actual[6][10]=1;
    actual[6][11]=1;
    actual[6][12]=1;
    actual[6][16]=1;
    actual[6][17]=1;
    actual[6][18]=1;
    actual[8][10]=1;
    actual[8][11]=1;
    actual[8][12]=1;
    actual[8][16]=1;
    actual[8][17]=1;
    actual[8][18]=1;
    actual[13][10]=1;
    actual[13][11]=1;
    actual[13][12]=1;
    actual[13][16]=1;
    actual[13][17]=1;
    actual[13][18]=1;
    actual[3][8]=1;
    actual[4][8]=1;
    actual[5][8]=1;
    actual[10][8]=1;
    actual[9][8]=1;
    actual[11][8]=1;
    actual[3][13]=1;
    actual[4][13]=1;
    actual[5][13]=1;
    actual[10][13]=1;
    actual[9][13]=1;
    actual[11][13]=1;
    actual[3][15]=1;
    actual[4][15]=1;
    actual[5][15]=1;
    actual[10][15]=1;
    actual[9][15]=1;
    actual[11][15]=1;
    actual[3][20]=1;
    actual[4][20]=1;
    actual[5][20]=1;
    actual[10][20]=1;
    actual[9][20]=1;
    actual[11][20]=1;
    actual[30][10]=1;
    actual[30][12]=1;
    actual[30][11]=1;
    actual[30][13]=1;
    actual[30][14]=1;
    actual[30][15]=1;
    actual[30][16]=1;
    actual[30][17]=1;
    actual[32][10]=1;
    actual[32][12]=1;
    actual[32][11]=1;
    actual[32][13]=1;
    actual[32][14]=1;
    actual[32][15]=1;
    actual[32][16]=1;
    actual[32][17]=1;
    actual[31][10]=1;
    actual[31][12]=1;
    actual[31][13]=1;
    actual[31][14]=1;
    actual[31][15]=1;
    actual[31][17]=1;
  }
  if(key == '3'){
    for(int i = 0; i < height/cell; i++){
      for(int j = 0; j < width/cell; j++){
        actual[i][j] = 0;
      }
    }
    actual[5][1]=1;
    actual[3][2]=1;
    actual[7][2]=1;
    actual[8][3]=1;
    actual[3][4]=1;
    actual[8][4]=1;
    actual[4][5]=1;
    actual[5][5]=1;
    actual[6][5]=1;
    actual[7][5]=1;
    actual[8][5]=1;
    actual[2][15]=1;
    actual[3][15]=1;
    actual[4][15]=1;
    actual[5][15]=1;
    actual[6][15]=1;
    actual[7][15]=1;
    actual[1][16]=1;
    actual[7][16]=1;
    actual[7][17]=1;
    actual[1][18]=1;
    actual[6][18]=1;
    actual[3][19]=1;
    actual[4][19]=1;
    actual[2][22]=1;
    actual[3][22]=1;
    actual[4][22]=1;
    actual[5][22]=1;
    actual[1][23]=1;
    actual[5][23]=1;
    actual[5][24]=1;
    actual[1][25]=1;
    actual[4][25]=1;
    
  }
  if(key == 'c'){
    for(int i = 0; i < height/cell; i++){
      for(int j = 0; j < width/cell; j++){
        actual[i][j] = 0;
      }
    }
  }
  if(key == 'a'){
    background(0);
    for(int i = 0; i < height/cell; i++){
      for(int j = 0; j < width/cell; j++){
        int num = (int)(Math.random()*10);
        if(num >= 5){
          actual[i][j] = 1;
        }
        else{
          actual[i][j] = 0;
        }
        if(actual[i][j] == 1){
          fill(0, 255, 0);
        }
        else{
          fill(0);
        }
        rect(cell*i,cell*j,cell,cell);
      }
    } 
  }
}
void evolucion(){
      for(int i = 0; i < height/cell; i++){
        for(int j = 0; j < width/cell; j++){
          vecino = 0;
            for(int s = -1; s < 2; s++){             
              for(int k = -1; k < 2; k++){
                if(i + s >= 0 && i + s < height/cell && j + k >= 0 && k + j < width/cell && (k != 0 || s != 0) ){
                  if(actual[i+s][k+j] == 1){
                    vecino += 1;
                  }
                }
              }
            }
            if(vecino > 3 || vecino < 2){
              futuro[i][j] = 0;
            }
            else{
              if(vecino == 3 && actual[i][j] == 0){
                futuro[i][j] = 1;
              } 
              else{
                futuro[i][j] = actual[i][j];
              }
           }
        }
      }
   for(int i = 0; i < height/cell; i++){
      for(int j = 0; j < width/cell; j++){
        actual [i][j] = futuro[i][j];
      }
   }
}
void mousePressed(){
  if(mouseButton == RIGHT && pausa){
    int i = int(mouseX/cell);
    int j = int(mouseY/cell);
    actual[i][j] = 1 - actual[i][j];
  }
}
