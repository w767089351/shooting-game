PImage al1,  boss2, bz1, dp, fail, game1, in1, in2, in3, in5, in6, in7, in8, in9, in10, in11, in12, pre, pre1, pre2, sl1, win, enter;
int stage, x, y, zdNumber, szdNumber, alSize, alX, alY, slX, slY, slNumber, bzNumber, alNumber;
PImage []g=new PImage[20];
float []d=new float[20];
int []s=new int[20];
int timeStart;
int time;
int bossSpeed,bossLength;
int timeCurrent;
int bossX,bossY;
float []a=new float[20];
PImage []zd=new PImage[1000];
int []zdX=new int[1001];
int []zdY=new int[1000];
PImage []szd=new PImage[1000];
int []szdX=new int[1000];
int []szdY=new int[1000];
PImage []al=new PImage[10];
PImage []sl=new PImage[10];
PImage []bz=new PImage[10];
int []slSpeed=new int [10];
int []bzSpeed=new int [10];
int []alSpeed=new int [10];
int []sl2X=new int [10];
int []sl2Y=new int [10];
int []bz2X=new int [10];
int []bz2Y=new int [10];
int []al2X=new int [10];
int []al2Y=new int [10];
int []q=new int [10];
int []w=new int [10];
int []e=new int [10];
void setup()
{
  slNumber=0;
  bzNumber=0;
  alNumber=0;
  alSize=75;
  alX=300;
  alY=65;
  slX=-200;
  slY=200;
  bossSpeed=0;
  bossLength=400;
bossX=-2000;
time=60;
bossY=150;
  size(1100, 690);
  stage=1;
  x=20;
  y=0;
  zdNumber=0;
  for (int i=0; i<10; i++)
  {
    q[i]=0;
    w[i]=0;
    e[i]=0;
    sl[i]=loadImage("sl2.png");
    bz[i]=loadImage("bz2.png");
    al[i]=loadImage("al2.png");
    sl2X[i]=-200;
    bz2Y[i]=150;
    al2X[i]=-400;
  }
  for (int i=0; i<1000; i++)
  {
    zdX[i]=205;
    zd[i]=loadImage("zd.png");
  }
  for (int i=0; i<1000; i++)
  {
    szdX[i]=205;
    szd[i]=loadImage("szd.png");
  }
  for (int i=0; i<20; i++)
  {
    s[i]=int(random(0, height-100));
    d[i]=random(2,7);
    a[i]=width;
  }
  enter= loadImage("enter.png"); 
  al1= loadImage("al1.png");  
  boss2=loadImage("boss2.png");
  bz1=loadImage("bz1.png");
  dp=loadImage("dp.png");
  fail=loadImage("fail.png");
  for (int i=0; i<20; i++)
  {
    g[i]=loadImage("g"+i+".png");
  }
  game1=loadImage("game1.png");
  in1=loadImage("in1.png");
  in2=loadImage("in2.png");
  in3=loadImage("in3.png");
  in5=loadImage("in5.png");
  in6=loadImage("in6.png");
  in7=loadImage("in7.png");
  in8=loadImage("in8.png");
  in9=loadImage("in9.png");
  in10=loadImage("in10.png");
  in11=loadImage("in11.png");
  in12=loadImage("in12.png");
  pre=loadImage("pre.png");
  pre1=loadImage("pre1.png");
  pre2=loadImage("pre2.png");
  sl1=loadImage("sl1.png");
  win=loadImage("win.png");
}
void draw()
{
  if (stage==1)
  {
    enter();  
  }
  if (stage==2)
  {
    in1();
     fill(255,255,255);
    textSize(42);
    text("keyPressed or mousePressed",width/2-50,height-50);
  }
  if (stage==3)
  {
    in2();
  }
  if (stage==4)
  {
    in3();
  }
  if (stage==5)
  {
    in5();
  }
  if (stage==6)
  {
    in6();
  }
  if (stage==7)
  {
    in7();
  }
  if (stage==8)
  {
    in8();
  }
  if (stage==9)
  {
    in9();
  }
  if (stage==10)
  {
    in10();
  }
  if (stage==11)
  {
    in11();
  }
  if (stage==12)
  {
    in12();
  }
  if (stage==13)
  {
    pre();
  }
  if (stage==14)
  {
    pre1();
  }
  if (stage==15)
  {
    pre2();
  }
  if (stage==16)
  {   
    game1();
  }
  if (stage==17)
  {
    fail();
  }
  if(stage==18)
  {
    win();
  }  
  if (stage==16)
  {
    for (int i=0; i<zdNumber; i++)
    {
      image(zd[i], zdX[i], zdY[i], 100, 40);
      zdX[i]=zdX[i]+20;
    }
    for (int i=0; i<szdNumber; i++)
    {
      image(szd[i], szdX[i], szdY[i], 100, 50);
      szdX[i]=szdX[i]+25;
      if (szdX[i]>width)
      {
        szdX[i]=width+1000;
      }
    }
  }
}
void keyPressed()
{
  if (stage<16)
  {
    stage=stage+1;
  }
  if (stage==16)
  {
    if (szdNumber<100)
    {
      if (y>=10)
      {
        szdY[szdNumber]=mouseY-50;
        szdNumber=szdNumber+1;
        y=y-10;
      }
    }
  }
}
void enter()
{
  image(enter, 0, 0, width, height);
}
void in1()
{
  image(in1, 0, 0, width, height);
}
void in2()
{
  image(in2, 0, 0, width, height);
}
void in3()
{
  image(in3, 0, 0, width, height);
}
void in5()
{
  image(in5, 0, 0, width, height);
}
void in6()
{
  image(in6, 0, 0, width, height);
}
void in7()
{
  image(in7, 0, 0, width, height);
}
void in8()
{
  image(in8, 0, 0, width, height);
}
void in9()
{
  image(in9, 0, 0, width, height);
}
void in10()
{
  image(in10, 0, 0, width, height);
}
void in11()
{
  image(in11, 0, 0, width, height);
}
void in12()
{
  image(in12, 0, 0, width, height);
}
void pre()
{
  image(pre, 0, 0, width, height);
}
void pre1()
{
  image(pre1, 0, 0, width, height);
}
void pre2()
{
  image(pre2, 0, 0, width, height);
}
void win()
{
image(win,0,0,width,height);  
}                              
void fail()
{
  image(fail, 0, 0, width, height);
  fill(5,145,112);
  rect(width-400,height-100,200,50);
  fill(0,0,255);
  textSize(42);
  text("try again!",width-400,height-100,300,100);
}
void mousePressed()
{
  if(stage==17)
  {
  if(mouseX>=width-400 && mouseX<=width-200 && mouseY>=height-100 && mouseY<=height-50)
  {
    stage=16;
    timeStart=millis()/1000;
    time=60;
    x=20;
    y=0;
    for(int i=0;i<20;i++)
    {
      a[i]=width;
        bossSpeed=0;
  bossLength=400;
bossX=-2000;
bossY=150;
s[i]=int(random(0, height-150));
    d[i]=random(2,7);
    a[i]=width;   
    }  
}
  }
   if(stage<16)
  {
    stage=stage+1;
    if(stage==16)
    {
      timeStart=millis()/1000;
    }
  }  
  if (stage==16)
  {
    if (zdNumber<1000)
    {
      zdY[zdNumber]=mouseY-42;
      zdNumber=zdNumber+1;    
    }
    if (mouseX>alX&&mouseX<alX+alSize&&mouseY>alY&&mouseY<alY+alSize&&slNumber<10&& y>=30)
    {
     slSpeed[slNumber]=25;
     sl2Y[slNumber]=int(random(0,height-150));
      slNumber=slNumber+1;
      y=y-30;     
    }
    if (mouseX>alX+2*alSize+60&&mouseX<alX+3*alSize+60&&mouseY>alY&&mouseY<alY+alSize && alNumber<10&&y>=100)
    {
      alSpeed[alNumber]=8;
      alNumber=alNumber+1;
      y=y-100;       
    }
    if (mouseX>alX+alSize+30&&mouseX<alX+2*alSize+30&&mouseY>alY&&mouseY<alY+alSize&&bzNumber<10&&y>=60)
    {
       bzSpeed[bzNumber]=30;
       bz2X[bzNumber]=250;
      bzNumber=bzNumber+1;
      y=y-60;    
    }
  }
}
void game1()
{
  image(game1, 0, 0, width, height);
  image(dp, 5, mouseY-50, 200, 100);
  fill(187, 133, 46);
  textSize(42);
  text("ramianing companies:"+x, 50, 40);
  fill(146, 170, 117);
  textSize(42);
  text("special attacking:"+y, 600, 40);
  if(time>=0)
  {
  textSize(21);
  text("time left:"+time+"s",width-250,80);
  }
timeCurrent=millis()/1000;
  if(timeCurrent-timeStart>=1)
  {
    time=time-1;
    timeStart=millis()/1000;
  }  
  for (int i=0; i<20; i++)
  {
    image(g[i], a[i], s[i], 80, 140);
    a[i]=a[i]-d[i];
    if (a[i]<=205)
    {
      a[i]=width;
      s[i]=int(random(0, height-150));
       d[i]=random(2,7);
      x=x-1;
      if (x<=0)
      {
        stage=17;
      }
    }
  }
  for (int z=0; z<slNumber; z++)
  {
    image(sl[z], sl2X[z], sl2Y[z], 250, 150);
    sl2X[z]=sl2X[z]+slSpeed[z];
    if (sl2X[z]>=width && q[z]==0)
    {
      sl2X[z]=-250;
      q[z]=1;
      sl2Y[z]=int(random(0, height-150));
    }
  }
  for (int z=0; z<alNumber; z++)
  {
    image(al[z], al2X[z], -20, 400, height+80);
    al2X[z]=al2X[z]+alSpeed[z];
  }
  for (int z=0; z<bzNumber; z++)
  {
    image(bz[z], bz2X[z], bz2Y[z]-200, 200, 150);
    bz2Y[z]=bz2Y[z]+bzSpeed[z]; 
    if (bz2Y[z]>=height && w[z]<2)
    {
      bz2Y[z]=-150;
      w[z]=w[z]+1;
      bz2X[z]=bz2X[z]+300;
    }
  }
  for (int j = 0; j < zdNumber; j++) {
    if (zdY[j]+40>=bossY && zdY[j]<=bossY +400 && zdX[j]+100>=bossX && zdX[j]<=bossX + 300)
    {
      zdX[j] = -9999;
      zdY[j] = -9999;
      bossLength=bossLength-4;
    }
    if (szdY[j]+40>=bossY && szdY[j]<=bossY +400 && szdX[j]+100>=bossX && szdX[j]<=bossX + 300)
    {
      bossLength=bossLength-7; 
      szdX[j] = -9999;
      szdY[j] = -9999;
    }
  }
  for (int i=0; i<20; i++)
  {
    for (int j=0; j<zdNumber; j++)
    {
      if (zdY[j]+40>=s[i] && zdY[j]<=s[i] +100 && zdX[j]+100>=a[i] && zdX[j]<=a[i] + 50)
      {
        a[i]=width+30;
        zdY[j]=1000;
        y=y+1;
        s[i]=int(random(0, height-140));
         d[i]=random(2,7);
      }
      if (szdY[j]+40>=s[i] && szdY[j]<=s[i] +100 && szdX[j]+100>=a[i] && szdX[j]<=a[i] + 50)
      {   
        a[i]=width+30;
        s[i]=int(random(0, height-140));
         d[i]=random(2,7);
        if (szdX[j]+100<=width)
        {
          y=y+1;
        }
        if (szdX[j]>=width)
        {
          szdY[j]=-200;
        }
      }
    }
  }
  for (int i=0; i<20; i++)
  {
    for (int j=0; j<slNumber; j++)
    {
      if (sl2Y[j]+150>=s[i] && sl2Y[j]<=s[i] +100 && sl2X[j]+250>=a[i] && sl2X[j]<=a[i] + 50 )
      {
        a[i]=width+30;
          s[i]=int(random(0, height-140));
         d[i]=random(2,7);
      }
      if (sl2Y[j]+150>=bossY && sl2Y[j]<=bossY+400 && sl2X[j]+250>=bossX && sl2X[j]<=bossX+300)
      {
        bossLength=bossLength-15;
        sl2X[j]=width;
      }
    }
    for (int j=0; j<bzNumber; j++)
    {
      if (bz2Y[j]+150>=s[i] && bz2Y[j]<=s[i] +100 && bz2X[j]+200>=a[i] && bz2X[j]<=a[i] + 50)
      {   
        a[i]=width+30;
          s[i]=int(random(0, height-140));
         d[i]=random(2,7);
      }
      if (bz2Y[j]+150>=bossY && bz2Y[j]<=bossY+400 && bz2X[j]+250>=bossX && bz2X[j]<=bossX+300)
      {
        bossLength=bossLength-25; 
        bz2Y[j]=height;
      }
    }
    for (int j=0; j<alNumber; j++)
    {
      if (al2Y[j]+150>=bossY && al2Y[j]<=bossY+400 && al2X[j]+250>=bossX && al2X[j]<=bossX+300)
      {
        bossLength=bossLength-40;
        al2X[j]=width;
      }

      if (al2Y[j]+height>=s[i] && al2Y[j]<=s[i] +100 && al2X[j]+400>=a[i] && al2X[j]<=a[i] + 50)
      {
        a[i]=width+30;
          s[i]=int(random(0, height-140));
         d[i]=random(2,7);
        if (al2X[j]==width)
        {
          al2Y[j]=700;
        }
      }
    }
  }
  image(sl1, alX, alY, alSize, alSize); 
  image(al1, alX+2*alSize+60, alY, alSize, alSize);
  image(bz1, alX+alSize+30, alY, alSize, alSize);  
  if (time<=0)
  {
    for (int i=0; i<20; i++)
    {
      a[i]=3*width;
      d[i]=0;
      s[i]=-height;
    }
    if (bossX==-2000)
    {
      bossX=width;
      bossSpeed=1;
    }
  }
  image(boss2, bossX, bossY, 300, 400);
  bossX = bossX - bossSpeed;
  fill(255, 0, 0);
  rect(bossX-bossSpeed-30, bossY-30, bossLength, 30);
  noStroke();
  if(bossX<=205&&time<=0)
  {
    stage=17;
  }  
  if(bossLength <= 0){
    stage = 18;
  }
}

