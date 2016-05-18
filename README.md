# rubytrickz
rubytrickz

## Codebase

```
class Rubytrickz

  trap(:INT) {
    puts "This is Interrupt handler, It will execute on Ctrl+C"
  }

  at_exit {
    puts "This is Exit hook, It will run on exit."
  }

  loop do
    # Infinite loop
  end

end
```
