.class public Lcom/mrpoid/game/keysprite/SampleKeySprite;
.super Ljava/lang/Object;
.source "SampleKeySprite.java"

# interfaces
.implements Lcom/mrpoid/game/keysprite/KeySprite;
.implements Ljava/lang/Runnable;


# instance fields
.field private b_stoped:Z

.field private mListener:Lcom/mrpoid/game/keysprite/KeyEventListener;

.field private spriteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mrpoid/game/keysprite/Sprite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/mrpoid/game/keysprite/SampleKeySprite;->b_stoped:Z

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mrpoid/game/keysprite/SampleKeySprite;->spriteList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/mrpoid/game/keysprite/Sprite;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/mrpoid/game/keysprite/SampleKeySprite;->spriteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public count()I
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/mrpoid/game/keysprite/SampleKeySprite;->spriteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public fromXml(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 103
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p1

    if-gtz p1, :cond_0

    .line 104
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "xml file is invalid!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    const-string v1, "UTF-8"

    .line 107
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 108
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/mrpoid/game/keysprite/SampleKeySprite;->spriteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "key"

    .line 115
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    new-instance v0, Lcom/mrpoid/game/keysprite/Sprite;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 118
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v3, v1, v2}, Lcom/mrpoid/game/keysprite/Sprite;-><init>(Ljava/lang/String;II)V

    .line 120
    iget-object v1, p0, Lcom/mrpoid/game/keysprite/SampleKeySprite;->spriteList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method public get(I)Lcom/mrpoid/game/keysprite/Sprite;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/mrpoid/game/keysprite/SampleKeySprite;->spriteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mrpoid/game/keysprite/Sprite;

    return-object p1
.end method

.method public getSpriteList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mrpoid/game/keysprite/Sprite;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/mrpoid/game/keysprite/SampleKeySprite;->spriteList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public remove(I)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/mrpoid/game/keysprite/SampleKeySprite;->spriteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public run()V
    .locals 5

    .line 51
    iget-object v0, p0, Lcom/mrpoid/game/keysprite/SampleKeySprite;->spriteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    const/4 v1, 0x0

    .line 54
    :goto_0
    iget-boolean v2, p0, Lcom/mrpoid/game/keysprite/SampleKeySprite;->b_stoped:Z

    if-nez v2, :cond_1

    if-ge v1, v0, :cond_1

    .line 55
    iget-object v2, p0, Lcom/mrpoid/game/keysprite/SampleKeySprite;->spriteList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mrpoid/game/keysprite/Sprite;

    .line 57
    iget-object v3, p0, Lcom/mrpoid/game/keysprite/SampleKeySprite;->mListener:Lcom/mrpoid/game/keysprite/KeyEventListener;

    iget v4, v2, Lcom/mrpoid/game/keysprite/Sprite;->value:I

    invoke-interface {v3, v4, v2}, Lcom/mrpoid/game/keysprite/KeyEventListener;->onKeyDown(ILcom/mrpoid/game/keysprite/Sprite;)V

    .line 60
    :try_start_0
    iget v3, v2, Lcom/mrpoid/game/keysprite/Sprite;->time:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    iget-object v3, p0, Lcom/mrpoid/game/keysprite/SampleKeySprite;->mListener:Lcom/mrpoid/game/keysprite/KeyEventListener;

    iget v4, v2, Lcom/mrpoid/game/keysprite/Sprite;->value:I

    invoke-interface {v3, v4, v2}, Lcom/mrpoid/game/keysprite/KeyEventListener;->onKeyUp(ILcom/mrpoid/game/keysprite/Sprite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :catch_0
    :cond_1
    iget-boolean v1, p0, Lcom/mrpoid/game/keysprite/SampleKeySprite;->b_stoped:Z

    if-eqz v1, :cond_0

    return-void
.end method

.method public run(Lcom/mrpoid/game/keysprite/KeyEventListener;)V
    .locals 1

    if-nez p1, :cond_0

    .line 38
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "KeyEventListener must be not null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/game/keysprite/SampleKeySprite;->spriteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 43
    :cond_1
    iput-object p1, p0, Lcom/mrpoid/game/keysprite/SampleKeySprite;->mListener:Lcom/mrpoid/game/keysprite/KeyEventListener;

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/mrpoid/game/keysprite/SampleKeySprite;->b_stoped:Z

    .line 46
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/mrpoid/game/keysprite/SampleKeySprite;->b_stoped:Z

    return-void
.end method

.method public toXml(Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 77
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p1

    const-string v1, "UTF-8"

    .line 79
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v1, "UTF-8"

    const/4 v2, 0x1

    .line 80
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "root"

    const/4 v2, 0x0

    .line 82
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "count"

    .line 83
    invoke-virtual {p0}, Lcom/mrpoid/game/keysprite/SampleKeySprite;->count()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    iget-object v1, p0, Lcom/mrpoid/game/keysprite/SampleKeySprite;->spriteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mrpoid/game/keysprite/Sprite;

    const-string v4, "key"

    .line 87
    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "title"

    .line 88
    iget-object v5, v3, Lcom/mrpoid/game/keysprite/Sprite;->title:Ljava/lang/String;

    invoke-interface {p1, v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "value"

    .line 89
    iget v5, v3, Lcom/mrpoid/game/keysprite/Sprite;->value:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "time"

    .line 90
    iget v3, v3, Lcom/mrpoid/game/keysprite/Sprite;->time:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "key"

    .line 91
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_0
    const-string v1, "root"

    .line 94
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 96
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 97
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method
