
require 'byebug'

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

def dominant_octopus(fishes)
  return fishes if fishes.size <= 1
  mid = fishes.size / 2
  merge(dominant_octopus(fishes[0...mid]), dominant_octopus(fishes[mid..-1])).last
end

def merge(left, right)
  merged = []
  debugger
  until left.empty? || right.empty?
    if left.first.size < right.first.size
      merged << left.first
      left.shift
    else
      merged << right.first
      right.shift
    end
  end
  merged + left + right
end

def clever_octopus(fishes) # linear search O(n) :: iteration
  largest_fish = ''
  fishes.each do |fish|
    largest_fish = fish if fish.length > biggest_fish.length
  end
  largest_fish
end


tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]


def slow_dance(step, tiles_arr)
  tiles_arr.length.times do |tile|
    return tiles_arr[tile] if tiles_arr[tile] == step
  end
end
