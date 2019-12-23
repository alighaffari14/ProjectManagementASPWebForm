
function GetUniqueArrayFromObjectArray(ObjectArray,Object)
{
    var uniqueValues = [];
    for (i = 0; i < ObjectArray.length; i++) {
        var value = read_prop(ObjectArray[i], Object);
        if (uniqueValues.indexOf(value) === -1) {
            uniqueValues.push(value);
        }
    }
    return uniqueValues;
}

function GetUniqueObjectArrayFromObjectArray(ObjectArray, Object) {
    var uniqueValues = [];
    for (i = 0; i < ObjectArray.length; i++) {
        var value = read_prop(ObjectArray[i], Object);
        if (uniqueValues.indexOf(value) === -1) {
            uniqueValues.push(ObjectArray[i]);
        }
    }
    return uniqueValues;
}

function read_prop(obj, prop) {
    return obj[prop];
}