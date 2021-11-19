boolean sw = false; // ブール型で照明のオンオフを管理するスイッチ(sw)を宣言しfalseで初期化

void setup() {
  size(400, 400, P3D); // キャンバスサイズを(300,300)でレンダラーをP3Dに設定
  noStroke(); // 枠線を描画しない設定
}

void draw() {
  background(204); // 背景色を設定

  if (sw) { // swの値がtrueの場合以下を実行
    lights(); // 光源を設定
  }
  
  translate(width/2, height/2, 0); // 画面の中央を原点に設定
  sphere(width/3); // 球を描画
}

// キー入力がされたら実行
void keyPressed() {
  if (key == 's') { // 入力されたキーがsの場合
    if(sw == true) { // swがtrueの場合
      sw = false; // swをfalseに設定
    } else if(sw == false) { // swがfalseの場合
      sw = true; // swをtrueに設定
    }
  }
}
