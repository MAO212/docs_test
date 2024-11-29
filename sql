const slide3D = document.querySelector('.slide3D');

slide3D.addEventListener('mousemove', (event) => {
    const { clientX, clientY, target } = event;
    const { left, top, width, height } = target.getBoundingClientRect();
    
    const x = (clientX - left) / width; // 0 から 1 の範囲
    const y = (clientY - top) / height; // 0 から 1 の範囲

    const rotateY = (x - 0.5) * 30; // 左右の回転
    const rotateX = (0.5 - y) * 30; // 上下の回転

    slide3D.style.transform = `rotateY(${rotateY}deg) rotateX(${rotateX}deg)`; // 回転を適用
});

slide3D.addEventListener('mouseleave', () => {
    slide3D.style.transform = 'rotateY(0deg) rotateX(0deg)'; // マウスが離れたときに戻す
});
