// Comentario de Linea
/*
    Comentario de Bloque
*/
/** Comentario de Bloque para Documentar (JavaDoc) */

// alert('Esto Funciona'); Obsoleto

console.trace('Esto es una traza de Log');
console.info('Para Informar sobre Cosas');
var a = 2;
console.debug('La Variable a = ' + a);
// console.warn('Houston Tenemos un Problema');
// console.error('Error en la Conexion al servidor Rest');

function buscarVoluntario(){
    console.trace('click buscarVoluntario');
    var alumnos = ["Iker", "Aitor", "Endika", "Iñigo", "Kiryl", "Juan Carlos", "Maria", "Ana", "Alejandro", "Cristian", "Erlantz", "Raul", "Joseba", "Mikel"];
    document.getElementById('nombre').innerHTML = alumnos[Math.floor(Math.random() * alumnos.length)];
}