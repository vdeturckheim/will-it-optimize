'use strict';
module.exports = {
    description: 'Unsupported phi use of const or let variable',
    exec: function test() {
        for (let i = 0; i < 0; i++) {
            const x = __lookupGetter__; // `__lookupGetter__` and
        }
        const self = this; // `this` should both be present for this to happen
    }
};
