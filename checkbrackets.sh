#!/bin/bash

are_braces_balanced() {
	    local input="$1"
	        local open=0  # Counter for open braces

		    for (( i = 0; i < ${#input}; i++ )); do
			            char="${input:i:1}"

				            if [[ "$char" == "(" ]]; then
						                ((open++))  # Increment for an opening brace
								        elif [[ "$char" == ")" ]]; then
										            ((open--))  # Decrement for a closing brace
											                if (( open < 0 )); then
														                echo "false"  # More closing braces than opening
																                return
																		            fi
																			            fi
																				        done

																					    if (( open == 0 )); then
																						            echo "true"  # Balanced
																							        else
																									        echo "false"  # Unbalanced
																										    fi
																									    }

																									    # Prompt user for input
																									    read -p "Enter a string to check for balanced braces: " input
																									    echo "Balanced: $(are_braces_balanced "$input")"

