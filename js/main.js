const bgArray = ["tibet", "speaklow", "vinyl", "sign", "drum"];
const bg = document.querySelector(".section");
const bgImage = bgArray[Math.floor(Math.random() * bgArray.length)];
bg.classList.add(bgImage);

const heart = document.querySelector(".heart");
setTimeout(() => {
  heart.classList.add("fade");
}, 200);
