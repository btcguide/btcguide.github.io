---
title: Backup Seeds
---

## Think Hard About Your Risks
It is a natural human bias to be more concerned with theft vs loss.
An easy window into our psychology is that we are all terrified of homicide but in fact suicide is more common.
Non-expert users should question themselves when taking extreme steps to protect against theft over loss.

There are many tradeoffs between security/redundancy below and only you can decide what the appropriate balance is for your needs.

## Multiple Locations

#### Physical Security
Not only does storing all of your bitcoin information in one place make it less secure, it also makes you a target!
You don't want a home-invader to be able to hold you at gunpoint for your life-savings.
The downside here is that funds kept this way may be a little harder to spend as you now have to visit multiple secure locations.
_For day-to-day funds, you might choose a simpler single-key signature wallet setup that is easy to spend_ (but not as secure).

#### Natural Disasters
If you keep all `m` seeds in one location and there is a fire (or flood) you could lose everything, perhaps when you need it most.
In the unlikely event you need to evacuate, you don't also want to be carrying your life-savings on you (see previous section on physical security).

Imagine you have a `2-of-3` scheme with 1 seed in each of 3 cities (A, B, and C).
Should you need to evacuate city A, you can take seed A with you to city B or to city C.
As you are only carrying 1 (of a needed 2) seeds, should you be robbed during this time your attacker will not be able to spend your bitcoin.
Important note: in the event a seed is compromised you need to retrieve `m` seeds ASAP to "rotate" out the seed that was stolen (this is accomplished by moving your funds to a new multisig scheme where you control *all* 3 seeds again).


## Estate Planning
The hardest bitcoin security question for most bitcoiners to answer is "what happens to your bitcoin if you get hit by a bus?"
Unfortunately, ensuring your bitcoin is recoverable by your loved ones **and nobody else** is a very challenging task.
Multisig is the best tool we have to aid in this process.

#### Give One (or More) Seeds to Someone You Trust
If someone has a quorum of seeds, they can potentially steal your bitcoins!
Depending on your personal situation, this may be a good thing (perhaps a spouse who you want to have complete access) or a bad thing (perhaps a financial manager who might be tempted to steal).

Imagine you have a 2-of-3 scheme with seeds A, B, and C, all of which you initially control.
You and your spouse want to always have access to your bitcoins, and you want your children to only get access in the event both you and your spouse are dead.

You might do the following:

* Give your family (you, your spouse, and your children) a copy of seed A. You/spouse store seed A at home or work and your children also store seed A somewhere that only they have access to (perhaps their home, work or a safe deposit box).
* Put seed B in a safe-deposit box that only you and your spouse have access to.
* Give seed C to your lawyer or other trusted-friend, to share with your children in the event of your death only. They will also share it with you if needed as part of an emergency recovery.

As a result of this scheme:

* You and your spouse always have regular access via seeds A & B, provided that you didn't lose your copy of seed A and that you can get into your safe deposit box for seed B. If you lose seed A, you can ask your spouse or children for their copy as a backup. In the event of a problem retrieving seed B from the bank, you can ask your lawyer for assistance in recovery (as they have seed C). Keep in mind that if you lose *both* seeds A and B, your bitcoins are permanently lost.
* In the event both you and your spouse die, your children can recover. They already have seed A, they just need seed B (from the bank) or seed C (from the lawyer). They can get access to seed B by contacting the bank (assuming you designated your children as the next-of-kin for your safe deposit box) or seed C by contacting the lawyer.

Of course, there are all kinds of tradeoffs/choices to be made:

* If *both* your lawyer and the bank are dishonest (or compelled by a government order), they can collude to steal your bitcoin (they have access to seeds B and C)!
* If *both* your lawyer and the bank are unlucky/negligent (perhaps they both suffer catastrophic fires in the same day!), you can be locked out of your bitcoin forever (seeds B and C are lost, as seed A A alone is not enough to meet the `2-of-3` threshold).
* If your children want to steal their inheritance before you die and are able to can collude with (or trick) either the bank or the lawyer, they can get seed B or C and combine it with seed A (which they already have).
* Your lawyer and your children may have some insight into your bitcoin transaction history, which could implicate how much bitcoin you have.

Read more [here](/known-issues/seeds-and-privacy).

While not perfect, this is **far superior to single-key signature schemes**.

Each of these situations can be addressed with a different quorum, giving different people different access, making more backups, etc.
However, each of those choices will introduce new risks.

You can quickly see that this scheme lends itself better to something like `3-of-5`, so you can have more entities/redundancy, and clearer organizational lines (less copies of keys floating around, so you can know for sure *who* signed each transaction).

## Protect Your Backups

#### Metal
[Metal bitcoin seed storage](https://blog.lopp.net/metal-bitcoin-seed-storage-stress-test-round-iii/) is the most durable, as paper can fade, burn or smudge if wet.
Use metal instead of paper to backup your seed phrases.

#### Archival Paper & Ink
[Archival paper](https://en.wikipedia.org/wiki/Acid-free_paper#Archival_paper) is obviously not as durable as metal, but better than regular paper.
Place your paper into a plastic bag with a good seal (vacuum sealed even better) so that it doesn't get destroyed in the event of water damage.

#### Fireproof Document Bag
You can use these to protect seed backups, and also to protect your physical hardware wallets.
