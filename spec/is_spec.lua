describe("is", function()
  setup(function()
    require "t"
  end)
  it("redis_mask", function()
    assert.redis_mask("h-llo")
    assert.redis_mask("h?llo")
    assert.redis_mask("h+llo")
    assert.redis_mask("h*llo")
    assert.redis_mask("h[llo")
    assert.redis_mask("h]llo")
    assert.redis_mask("h^llo")
    assert.redis_mask("h{llo")
    assert.redis_mask("h}llo")

    assert.redis_mask("*")

    assert.not_redis_mask("hello")
  end)
end)
