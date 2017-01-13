// desenhar interface("text",x,y,camara)


//textSpd = argument1;
//objX = argument2;
//objY = argument3;
//camera = argument4;

txt = instance_create(argument2,argument3,obj_text);

with(txt){
    padding = 16;
    textCornerPadding = 15;
    maxLenght = view_wview[0];
    text = argument0;
    spd = argument1;
    font = fnt_text;
    translateY = argument4;
    
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    
    draw_set_font(font);
    
    text_width = string_width_ext(text,font_size + (font_size/2), maxLenght);
    text_height = string_height_ext(text,font_size + (font_size/2), maxLenght);
    
    
    
    boxwidth = text_width + (padding*2);
    boxheight = text_height + (padding*2);
    
    rectX1 = x-boxwidth/2;
    rectX2 = x+boxwidth/2;
    rectY1 = y-translateY;
    rectY2 = y-translateY+boxheight;
    
    triX1 = x-15;
    triX2 = x+15;
    triX3 = x;
    triY1 = y-translateY+boxheight;
    triY2 = y-translateY+boxheight;
    triY3 = y-translateY+boxheight+40;
    
    
    
    if((rectX1 + boxwidth+textCornerPadding) > maxLenght){
        show_debug_message("entrei");
        paddingLeft = rectX1 + boxwidth - view_wview[0]; 
        rectX1 -= paddingLeft+textCornerPadding;
        rectX2 -= paddingLeft+textCornerPadding; 
    }
    show_debug_message(rectX1);
    if(rectX1-textCornerPadding <= 0){
        paddingRight = 0;
        rectX1 = paddingRight+textCornerPadding;
        rectX2 = paddingRight + boxwidth + padding; 
    }
    

}



