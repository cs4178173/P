/* @pjs preload="rock.jpg" */
/* @pjs preload="paper.jpg" */
/* @pjs preload="scissors.jpg" */
PImage a,b,c;
int your;
int ai,score,i,i1,i2,i3;
void setup()
{
   size(600,600);
   randomSeed(0);
}
void draw()
{
  
  background(255);
  fill(0);
  textSize(30);
  text("Score: "+score,20,40);
  textSize(50);
text ("AI",450,150);
text ("Your",84,150);
a=loadImage ("rock.jpg");
image(a,0,400,200,200);
b=loadImage ("scissors.jpg");
image(b,200,400,200,200);
c=loadImage ("paper.jpg");
image(c,400,400,200,200);
  if((your==1 && ai==2)||(your==2 && ai==3)||(your==3 && ai==1))
   {
   textSize(50);
     text("You win",212,100);
    
   }
    if((ai==1 && your==2)||(ai==2 && your==3)||(ai==3 && your==1))
   {
   textSize(50);
     text("You lose",216,100);
   }
   if(ai==your && ai>0 && your>0)
   {
     textSize(50);
     text("Draw",252,100);
   }
   if(ai>0 && ai<2)
  {
    image(a,403,200,150,150);
  }
   if(ai>1 && ai<3)
  {
    image(b,403,200,150,150);
  }
   if(ai>2 && ai<4)
  {
    image(c,403,200,150,150);
  }
  if(your==1)
  {
    image(a,74,200,150,150);
  }
  if(your==2)
  {
    image(b,74,200,150,150);
  }
  if(your==3)
  {
    image(c,74,200,150,150);
  }
}
void mouseClicked()
{
  if(mouseX>0 && mouseX<200 && mouseY>400 && mouseY<600)
  {
    your=1;
     ai=int(random(1,16+i));
     if (ai>10+i1+i2)
     {
       ai=2;
     }
     else if (ai>5+i1)
   { 
    ai=1;
   }
  else
 { 
   ai=3;
 }  
     i++;
     i1++;
     if((your==1 && ai==2)||(your==2 && ai==3)||(your==3 && ai==1))
   {
    score=score+1;
   }
    if((ai==1 && your==2)||(ai==2 && your==3)||(ai==3 && your==1))
   {
      score=score-1;
   }
  }
  if(mouseX>200 && mouseX<400 && mouseY>400 && mouseY<600)
  {
    your=2;
     ai=int(random(1,16+i));
     if (ai>10+i1+i2)
     {
       ai=2;
     }
     else if (ai>5+i1)
   { 
    ai=1;
   }
  else
 { 
   ai=3;
 }  
     i++;
     i2++;
       if((your==1 && ai==2)||(your==2 && ai==3)||(your==3 && ai==1))
   {
    score=score+1;
   }
    if((ai==1 && your==2)||(ai==2 && your==3)||(ai==3 && your==1))
   {
      score=score-1;
   }
  }
  if(mouseX>400 && mouseX<600 && mouseY>400 && mouseY<600)
  {
    your=3;
     ai=int(random(1,16+i));
     if (ai>10+i1+i2)
     {
       ai=2;
     }
     else if (ai>5+i1)
   { 
    ai=1;
   }
  else
 { 
   ai=3;
 }  
     i++;
     i3++;
       if((your==1 && ai==2)||(your==2 && ai==3)||(your==3 && ai==1))
   {
    score=score+1;
   }
    if((ai==1 && your==2)||(ai==2 && your==3)||(ai==3 && your==1))
   {
      score=score-1;
   }
  }
  
  
}

