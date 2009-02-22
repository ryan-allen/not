# Am not! Are too!

Let's be clear, you so are.

## WTF?

Inverse predicates, but, like, how it should read in English, probably. I am supposed to be studying for an English exam, instead I am making Ruby more English. I think.

## OK, so, like, what?

Check this out:

    true == true     # true
    true.not == true # false
    nil == nil       # true
    nil.not == nil   # false

Very cute you say, so how about this then?

    # Instead of:

    if !@user.authorised?
      # Can't go ice skating.
    end
    
    # You can go:

    if @user.not.authorised?
      # Can't go ice skating.
    end

Much more englishy!

## Some silly coz we can.

Oh, you're going to love this.

    true.not.not == true         # true
    true.not.not.not == true     # false
    true.not.not.not.not == true # true

This would keep me amused for hours.

Enjoy!

---

Copyright (c) 2009 Ryan Allen. Released under the MIT License.
