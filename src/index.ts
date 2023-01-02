import Tree from '@/one/two/tree/tree'

class Person {
  sayMyName() {
    return 'Adam'
  }
}

export default Person

console.log(new Tree().log())
