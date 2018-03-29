
def sluggish_octopus(fishes)
  orderd_fishes = fishes.dup
  sorted = false

  until sorted
    sorted = true
    orderd_fishes.each_index do |idx|
      next if idx + 1 == orderd_fishes.size
      idx2 = idx + 1
        if orderd_fishes[idx].size > orderd_fishes[idx2].size
          orderd_fishes[idx], orderd_fishes[idx2] = orderd_fishes[idx2], orderd_fishes[idx]
          sorted = false
        end
      end
    end
    orderd_fishes.last
  end
