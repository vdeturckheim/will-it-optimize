'use strict';
module.exports = {
    description: 'Rest parameters',
    exec: function test(...rest) {
    return rest[0];
}
};