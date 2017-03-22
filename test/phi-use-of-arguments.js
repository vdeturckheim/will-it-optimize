'use strict';
module.exports = {
    description: 'Unsupported phi use of arguments',
    exec: function test1() {
        var _arguments = arguments;
        if (0 === 0) { // anything evaluating to true, except a number or `true`
            _arguments = [0]; // Unsupported phi use of arguments
        }
    }
};
