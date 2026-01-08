import fs from 'fs';

const rawData = fs.readFileSync('C:/Users/User/Documents/Development/malamute-api/src/data/images.json');
const data = JSON.parse(rawData);

// 1. Identificar duplicados usando Map para mantener referencia de originales
const uniqueMap = new Map();
const duplicates = [];

data.forEach(exercise => {
    // Crear clave única combinando Title y Desc
    const key = `${exercise.Title}|${exercise.Desc}`;
    
    if (uniqueMap.has(key)) {
        // Si ya existe, agregar a duplicados
        duplicates.push(exercise);
        
        // Si es el primer duplicado, también agregar el original
        if (!uniqueMap.get(key).markedAsDuplicate) {
            duplicates.push(uniqueMap.get(key).exercise);
            uniqueMap.get(key).markedAsDuplicate = true;
        }
    } else {
        // Guardar en mapa con flag para tracking
        uniqueMap.set(key, {
            exercise: exercise,
            markedAsDuplicate: false
        });
    }
});

// 2. Filtrar únicos verdaderos (no marcados como duplicados)
const uniqueExercises = [];
for (const entry of uniqueMap.values()) {
    if (!entry.markedAsDuplicate) {
        uniqueExercises.push(entry.exercise);
    }
}

// 3. Guardar en archivos separados
fs.writeFileSync('unique_exercises.json', JSON.stringify(uniqueExercises, null, 2));
fs.writeFileSync('duplicate_exercises.json', JSON.stringify(duplicates, null, 2));

// 4. Mostrar resumen
console.log(`Total ejercicios originales: ${data.length}`);
console.log(`Ejercicios únicos: ${uniqueExercises.length}`);
console.log(`Ejercicios duplicados: ${duplicates.length}`);
console.log(`\nArchivos generados:
- unique_exercises.json: ${uniqueExercises.length} ejercicios
- duplicate_exercises.json: ${duplicates.length} ejercicios`);