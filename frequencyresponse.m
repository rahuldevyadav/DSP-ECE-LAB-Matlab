close all;
clc;
clear all;
% Sampling
% Generating sinosudial function
choice=100;
while (choice!=8)
  disp('Experiment - 3 Basic Signals')
  disp('----------------------------')
  disp('Choose Signal to be Ploted from Options e.g 1,2,3')
  disp('1. Unit Impluse Function')
  disp('2. Unit Step Function')
  disp('3. Ramp Function')
  disp('4. Exponential Function')
  disp('5. Sin Function')
  disp('6. Cos Function')
  choice = input('Input integer - ');
  Fs=input('Input sampling frequency (StepSize) intger for 1- ')
  tn=input('Time range [Start End]');
  t=tn(1):1/Fs:tn(2);  
  
  if (choice==1)
    UnitImpluse = t==0;
    %UnitImpluse= t!=0;
    disp('Choose Type of plot')
    disp('1. Continuous Plot')
    disp('2. Discrete Plot')
    plotchoice=input('Input your choice - ')
     if (plotchoice==1)
      plot(t,UnitImpluse-1)
      title('Unit Impluse Signal')
      xlabel('Time')
      ylabel('Amplitude')
      grid on;
    else stem(t,UnitImpluse)
         title('Unit Impluse Signal')
         xlabel('Time')
         ylabel('Amplitude')
         grid on; 
    end
    
  elseif (choice==2)
    UnitStep = t>=0;
    disp('Choose Type of plot')
    disp('1. Continuous Plot')
    disp('2. Discrete Plot')
    plotchoice=input('Input your choice - ')
    if (plotchoice==1)
      plot(t,UnitStep)
      title('Unit Signal Signal')
      xlabel('Time')
      ylabel('Amplitude')
      grid on;
    else stem(t,UnitStep)
          title('Unit Impluse Signal')
          xlabel('Time')
          ylabel('Amplitude')
          grid on;
    end
 
 elseif (choice==3)
    UnitStep = t>=0;
    disp('Choose Type of plot')
    disp('1. Continuous Plot')
    disp('2. Discrete Plot')
    plotchoice=input('Input your choice - ')
    if (plotchoice==1)
      plot(t,UnitStep*t)
      title('Ramp Signal')
      xlabel('Time')
      ylabel('Amplitude')
      grid on;
    else stem(t,UnitStep*t)
    title('Ramp Signal')
    xlabel('Time')
    ylabel('Amplitude')
    grid on;
    end

  elseif (choice==4)
     disp('Exponential = exp(a*t)')
    A=input('Input value of a');
    Expo=exp(A*t)
    disp('Choose Type of plot')
    disp('1. Continuous Plot')
    disp('2. Discrete Plot')
    plotchoice=input('Input your choice - ')
    if (plotchoice==1)
      plot(t,Expo)
      title('Exponential Signal')
      xlabel('Time')
      ylabel('Amplitude')
      grid on;
    else stem(t,Expo)
    title('Ramp Signal')
    xlabel('Time')
    ylabel('Amplitude')
    grid on;
    end
  
  elseif (choice==5)
    A=input('Input Amplitude - ');
    f=input('Frequency - ')
    phasedif=input('input phase difference') 
    si = A*sin(2*pi*f*t + phasedif);
    disp('Choose Type of plot')
    disp('1. Continuous Plot')
    disp('2. Discrete Plot')
    plotchoice=input('Input your choice - ')
    if (plotchoice==1)
      plot(t,si)
      title('sinosudial Signal - Sin dignal')
      xlabel('Time')
      ylabel('Amplitude')
      grid on;
    else stem(t,si)
          title('sinosudial Signal - Sin dignal')
      xlabel('Time')
      ylabel('Amplitude')
      grid on;
      end
  
  elseif (choice==6)
     A=input('Input Amplitude - ');
    f=input('Frequency - ')
    phasedif=input('input phase difference') 
    co = A*cos(2*pi*f*t + phasedif);
    disp('Choose Type of plot')
    disp('1. Continuous Plot')
    disp('2. Discrete Plot')
    plotchoice=input('Input your choice - ')
    if (plotchoice==1)
      plot(t,co)
      title('sinosudial Signal - Cos signal')
      xlabel('Time')
      ylabel('Amplitude')
      grid on;
    else stem(t,co)
      title('sinosudial Signal - cos signal')
      xlabel('Time')
      ylabel('Amplitude')
      grid on;
      end
  
 end
  disp('Do you wish to continue : (7. Yes or 8. No) ')
  choice = input('Input integer - ');
  clc;
  close all;
  end  
  
