.class public interface abstract Lcom/mrpoid/game/keysprite/KeySprite;
.super Ljava/lang/Object;
.source "KeySprite.java"


# virtual methods
.method public abstract add(Lcom/mrpoid/game/keysprite/Sprite;)V
.end method

.method public abstract count()I
.end method

.method public abstract fromXml(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract get(I)Lcom/mrpoid/game/keysprite/Sprite;
.end method

.method public abstract getSpriteList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mrpoid/game/keysprite/Sprite;",
            ">;"
        }
    .end annotation
.end method

.method public abstract remove(I)V
.end method

.method public abstract run(Lcom/mrpoid/game/keysprite/KeyEventListener;)V
.end method

.method public abstract stop()V
.end method

.method public abstract toXml(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
