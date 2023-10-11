let btn1 = document.querySelector('#btn1');
    btn1.addEventListener('mouseup', (e) => {
        let msg = document.querySelector('#demo');
            switch (e.button) {
                case 0:
                    alert('Left Mouse click!');
                    break;
                case 1:
                    alert('Center Mouse click!');
                    break;
                case 2:
                    alert('Right Mouse click!.');
                    break;
                default:
                    alert(`Unknown mouse button code: ${event.button}`);
                }
        });