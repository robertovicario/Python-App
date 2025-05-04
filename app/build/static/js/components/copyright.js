/////////////////////////
/**
 * Copyright :: Components
 */
/////////////////////////

document.addEventListener('DOMContentLoaded', () => {
    document.getElementById('copyright').innerHTML = document.getElementById('copyright').innerHTML.replace('YYYY', new Date().getFullYear());
});

/////////////////////////
