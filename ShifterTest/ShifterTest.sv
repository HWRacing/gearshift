//Basic Shifter Test for FPGA 
module ShifterTest (clk,upBut, downBut, neutralBut, upOut, downOut,LED0, LED1, LED2, LED3, LED4, LED5);

//
input clk;
input upBut;
input downBut;
input neutralBut;

output upOut;
output downOut;
reg upOut;
reg downOut;

//LED INDICATORS
output LED0;
output LED1;
output LED2;
output LED3;
output LED4;
output LED5;
reg LED0, LED1, LED2, LED3, LED4, LED5;

//Reg for counting the number of cycles and outputing high
reg outputUpHigh;
reg outputDownHigh;
reg[31:0] currentCycles;
enum int{NORMALCYCLE = 5000000, NEUTRALCYCLE = 2500000} endConditionCycles;

enum reg[2:0] {NEUTRAL, FIRSTGEAR, SECONDGEAR, THIRDGEAR, FOURTHGEAR, FIFTHGEAR, SIXTHGEAR} currentGear;
 


initial
  begin
    currentGear     = NEUTRAL;
    outputUpHigh    = 1'b0;
    outputDownHigh  = 1'b0;
  end

always @(posedge clk)
begin

  LED0 = 1'b0;
  LED1 = 1'b0;
  LED2 = 1'b0;
  LED3 = 1'b0;
  LED4 = 1'b0;
  LED5 = 1'b0;

  case (currentGear)
    NEUTRAL : 
        LED0 = 1'b1;
    FIRSTGEAR :
        LED1 = 1'b1;
    SECONDGEAR :
        LED2 = 1'b1;
    THIRDGEAR :
        LED3 = 1'b1;
    FOURTHGEAR :
        LED4 = 1'b1;
    FIFTHGEAR :
        LED5 = 1'b1;
  endcase 

  if (outputUpHigh === 1'b1)
  begin
    upOut = 1'b1;
    currentCycles = currentCycles + 1'b1;
    if (currentCycles == endConditionCycles)
    begin
      outputUpHigh = 1'b0;
      upOut = 1'b0;
    end
  end
  else if (outputDownHigh === 1'b1)
  begin 
    downOut = 1'b1;
    currentCycles = currentCycles + 1'b1;
    if (currentCycles == endConditionCycles)
    begin
      outputDownHigh = 1'b0;
      downOut = 1'b0;
    end
  end
  else
  begin
    case(currentGear)
      NEUTRAL :
        begin
        //50 000 000 clock cycles for 1 second
          if (upBut === 1'b1 && downBut === 1'b0)
          begin
            endConditionCycles = NEUTRALCYCLE;
            outputDownHigh     = 1'b1;
            outputUpHigh       = 1'b0;
            currentGear        = FIRSTGEAR;
          end
        end
      
      FIRSTGEAR : 
        begin
          //UPSHIFT TO 2nd
          if (upBut === 1'b1 && downBut === 1'b0)
          begin
            endConditionCycles = NORMALCYCLE;
            outputUpHigh       = 1'b1;
            outputDownHigh     = 1'b0;
            currentGear        = SECONDGEAR;
          end
          //DOWNSHIFT TO NEUTRAL
          else if (upBut === 1'b0 && downBut === 1'b1)
          begin
            endConditionCycles = NEUTRALCYCLE;
            outputUpHigh       = 1'b0;
            outputDownHigh     = 1'b1;
            currentGear        = NEUTRAL;
          end
        end
      SECONDGEAR : 
        begin
          //UPSHIFT to 3rd
          if (upBut === 1'b1 && downBut === 1'b0)
          begin
            endConditionCycles = NORMALCYCLE;
            outputUpHigh       = 1'b1;
            outputDownHigh     = 1'b0;
            currentGear        = SECONDGEAR;
          end
          //DOWNSHIFT to 1st
          else if (upBut === 1'b0 && downBut === 1'b1)
          begin
            endConditionCycles = NORMALCYCLE;
            outputUpHigh       = 1'b0;
            outputDownHigh     = 1'b1;
            currentGear        = FIRSTGEAR;
          end
        end
      THIRDGEAR : 
        begin
          //UPSHIFT to 4th
          if (upBut === 1'b1 && downBut === 1'b0)
          begin
            endConditionCycles = NORMALCYCLE;
            outputUpHigh       = 1'b1;
            outputDownHigh     = 1'b0;
            currentGear        = FOURTHGEAR;
          end
          //DOWNSHIFT to 2nd
          else if (upBut === 1'b0 && downBut === 1'b1)
          begin
            endConditionCycles = NORMALCYCLE;
            outputUpHigh       = 1'b0;
            outputDownHigh     = 1'b1;
            currentGear        = SECONDGEAR;
          end
        end
      FOURTHGEAR :
        begin
          //UPSHIFT to 5th
          if (upBut === 1'b1 && downBut === 1'b0)
          begin
            endConditionCycles = NORMALCYCLE;
            outputUpHigh       = 1'b1;
            outputDownHigh     = 1'b0;
            currentGear        = FIFTHGEAR;
          end
          //DOWNSHIFT to 3nd
          else if (upBut === 1'b0 && downBut === 1'b1)
          begin
            endConditionCycles = NORMALCYCLE;
            outputUpHigh       = 1'b0;
            outputDownHigh     = 1'b1;
            currentGear        = THIRDGEAR;
          end
        end
      FIFTHGEAR :
        begin
          //UPSHIFT to 6th
          if (upBut === 1'b1 && downBut === 1'b0)
          begin
            endConditionCycles = NORMALCYCLE;
            outputUpHigh       = 1'b1;
            outputDownHigh     = 1'b0;
            currentGear        = SIXTHGEAR;
          end
          //DOWNSHIFT to 4th
          else if (upBut === 1'b0 && downBut === 1'b1)
          begin
            endConditionCycles = NORMALCYCLE;
            outputUpHigh       = 1'b0;
            outputDownHigh     = 1'b1;
            currentGear        = FOURTHGEAR;
          end
        end
      SIXTHGEAR :
        begin
          //DOWNSHIFT to 6th
          if (upBut === 1'b0 && downBut === 1'b1)
          begin
            endConditionCycles = NORMALCYCLE;
            outputUpHigh       = 1'b0;
            outputDownHigh     = 1'b1;
            currentGear        = FIFTHGEAR;
          end
        end
    endcase
  end
end
endmodule : ShifterTest
