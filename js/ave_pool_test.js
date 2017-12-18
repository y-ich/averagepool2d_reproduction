/* global $ WebDNN GoPosition */

const size = 3;

async function test() {
    const cnn = await WebDNN.load('output', {
        backendOrder: ['webgpu', 'webgl', 'webassembly']
    });
    console.log(cnn.backendName);
    const inputViews = cnn.getInputViews();
    const input = new Float32Array(size * size);
    input.fill(1.0);
    inputViews[0].set(input);
    await cnn.run();
    console.log(cnn.getOutputViews()[0].toActual());
}

test();
