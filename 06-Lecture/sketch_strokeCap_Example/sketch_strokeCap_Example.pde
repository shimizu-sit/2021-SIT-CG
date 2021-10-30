size(400, 400); // キャンバスサイズを(400, 400)に設定
strokeWeight(48.0); // 枠線（ここでは線自体）の太さを48pxに設定
textSize(40); // フォントサイズを40pxに設定
textAlign(CENTER); // テキストを中央揃えに設定

text("ROUND", 200, 50); // (200,50)に「ROUND」を表示
strokeCap(ROUND); // 線端の設定をROUND(まる)に設定
line(80, 90, 320, 90); // (80,90)から(320,90)に線を描画

text("SQUARE", 200, 160); // (200,160)に「SQUARE」を表示
strokeCap(SQUARE); // 線端を四角（キャップなし）に設定
line(80, 200, 320, 200); // (80,200)から(320,200)に線を描画

text("PROJECT", 200, 280); // (200,280)に「PROJECT」を表示
strokeCap(PROJECT); // 線端を延長に設定
line(80, 320, 320, 320); // (80,320)から(320,320)に線を描画

save("strokeCap-Example.png");
