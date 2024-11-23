#/bin/bash

# Set background color
echo -e "\033]11;#0F1734\007"

# Set foreground (text) color
echo -e "\033]10;#878aad\007"

# Set cursor color (a subtle shade)
echo -e "\033]12;#878aad\007"

# Set color palette (8-bit colors, the 16 basic colors)
# 0 - Black (Dark shades)
echo -e "\033]4;0;#0F1734\007"

# 1 - Red (For errors or highlighted words)
echo -e "\033]4;1;#D73B52\007"

# 2 - Green
echo -e "\033]4;2;#1B5A1D\007"

# 3 - Yellow
echo -e "\033]4;3;#F0C736\007"

# 4 - Blue (Directories or info)
echo -e "\033]4;4;#878aad\007"

# 5 - Magenta (Highlighting)
echo -e "\033]4;5;#B23257\007"

# 6 - Cyan
echo -e "\033]4;6;#64A1D9\007"

# 7 - White (Bright background elements)
echo -e "\033]4;7;#D1D1D1\007"

# 8 - Bright black (Subtle darker tone)
echo -e "\033]4;8;#353E57\007"

# 9 - Bright red (Used in bold error/warnings)
echo -e "\033]4;9;#76102A\007"

# 10 - Bright green
echo -e "\033]4;10;#7AA93C\007"

# 11 - Bright yellow
echo -e "\033]4;11;#FFD27E\007"

# 12 - Bright blue
echo -e "\033]4;12;#878aad\007"

# 13 - Bright magenta
echo -e "\033]4;13;#D37A8C\007"

# 14 - Bright cyan
echo -e "\033]4;14;#86D1F1\007"

# 15 - Bright white
echo -e "\033]4;15;#E5E5E5\007"

# Apply settings
echo -e "\033]710;#878aad\007"  # Apply foreground color to the cursor

