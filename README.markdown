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

## P.S.

Supports method arguments and blocks and etc, so all nice. Tested, too. Go <code>ruby not.rb</code> to run them. So, what I mean is:

    @user.not.authorized?(:to_go_ice_skating)
    @user.not.authorized? do
      # working out some fancy thing that a
      # user could do, like, ice skating
    end

All this works. So there.

## P.P.S.

I bet this has been done before and there are like, 100 libraries called not out there. I don't care, give me a break already!!!

---

Copyright (c) 2009 Ryan Allen. Released under the MIT License.
