import { isEven } from '@cs4dev/is-even';

export const isOdd = (x: number) => !isEven(x);
export const printOdd = () => console.log('Hello Odd');
