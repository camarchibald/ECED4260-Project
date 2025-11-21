/*
Author: Nader Hdeib
Student ID: B00898627
Date: November 20, 2025
File Name: controller.v
Description: This is the main blackjack game controller.
Acknowledgements: 
*/

module controller (
    // Deck module control signals
    input shuffle_ready,
    input shuffling,
    input card_ready,
    output start_shuffle,
    output start_card,

    // Adder module control signals
    input adder_ready,
    output clear_sums,
    output sum_select,

    // Comparator module control signals
    input [1:0] compare_result,
    output [2:0] compare_command

    // Display module control signals
    input display_ready,
    output [2:0] game_state

);

    // 4 bit state register
    reg [3:0] state;

    // Main FSM
    always @ (posedge clock or posedge reset) begin
        
        /// If reset pin is high, go to S0
        if (reset) 
        begin
            state <= S0;
        end

        else 
        begin

            // Logic for remaining cases
            case(state)

                S_SHUFFLE_START:
                    // assert shuffle deck control signal
                    // read deck shuffling control signal
                        // if deck shuffling control signal is high, go to SHUFFLING state
                S_SHUFFLING:
                    // read deck_shuffling control signal
                        // if deck shuffling control signal is low, set shuffle ready register and light shuffle LED
                        // if user pressed start after LED, go to DEAL_START state
                S_DEAL_START:
                    // read start button
                        // if start button is still asserted by used remain here
                        // else set card_start control signal
                S_CARD_START_HOUSE_PREGAME:
                S_GETTING_CARD_HOUSE:
                S_ADD_HOUSE_PREGAME:
                S_CARD_START_PLAYER_PREGAME:
                S_GETTING_CARD_PLAYER:
                S_ADD_PLAYER_PREGAME:
                S_DEAL_DONE_CHECK:
                S_PLAY_START:
                S_PLAYER_HIT:
                S_PLAYER_STAND:
                S_CARD_START_PLAYER_INGAME:
                S_GETTING_CARD_PLAYER_INGAME:
                S_ADD_PLAYER_INGAME:
                S_CHECK_PLAYER_BUST:
                S_CHECK_HOUSE_HIT:
                S_CARD_START_HOUSE_INGAME:
                S_GETTING_CARD_HOUSE_INGAME:
                S_CHECK_BUST_HOUSE:
                S_DETERMINE_WINNER:

            endcase
        end

    end

endmodule