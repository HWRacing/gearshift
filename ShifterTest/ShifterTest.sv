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

reg [2:0] previousPresses;
reg [3:0] numberButtonPresses;
reg shiftToNeutral;
 
//Initial Block
initial
  begin
    currentGear        = NEUTRAL;
    buttonPressesUp    = 1'b0;
    buttonPressesDown  = 1'b0;
    outputUpHigh       = 1'b0;
    outputDownHigh     = 1'b0;
    shiftToNeutral     = 1'b0;
  end

always @(posedge clk)
  begin

    //LED STATE STUFF
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

    if (buttonPressesUp  !== 1'b0)
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


  // Always block to count the up button presses
always @(posedge upBut)
  begin
    if (downBut === 1'b0)
      buttonPressesUp = buttonPressesUp + 1'b1;
  end

// Always block to count the down button presses
always @(posedge downBut)
  begin
    if (upBut === 1'b0)
      buttonPressesDown = buttonPressesDown + 1'b1;
  end

// The always block to deal with the neutral button. I.e. How many down presses. 
always @(posedge neutralBut)
  begin
    outputUpHigh       = 1'b0;
    outputDownHigh     = 1'b0;
    currentCycles = endConditionCycles;

    case (currentGear)
      NEUTRAL:
        buttonPressesDown = 4'd0;
      FIRSTGEAR:
        buttonPressesDown = 4'd1;
      SECONDGEAR:
        buttonPressesDown = 4'd2;
      THIRDGEAR
        buttonPressesDown = 4'd3;
      FOURTHGEAR:
        buttonPressesDown = 4'd4;
      FIFTHGEAR:
        buttonPressesDown = 4'd5;
      SIXTHGEAR:
        buttonPressesDown = 4'd6;
      default:
        buttonPressesDown = 4'd0;
  end

endmodule : ShifterTest
