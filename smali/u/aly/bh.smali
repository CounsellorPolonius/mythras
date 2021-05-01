.class public Lu/aly/bh;
.super Lu/aly/cr;
.source "PropertyValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bh$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/cr<",
        "Lu/aly/bh;",
        "Lu/aly/bh$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/bh$a;",
            "Lu/aly/ct;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lu/aly/dl;

.field private static final e:Lu/aly/db;

.field private static final f:Lu/aly/db;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 33
    new-instance v0, Lu/aly/dl;

    const-string v1, "PropertyValue"

    invoke-direct {v0, v1}, Lu/aly/dl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bh;->d:Lu/aly/dl;

    .line 34
    new-instance v0, Lu/aly/db;

    const-string v1, "string_value"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bh;->e:Lu/aly/db;

    .line 35
    new-instance v0, Lu/aly/db;

    const-string v1, "long_value"

    const/16 v3, 0xa

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bh;->f:Lu/aly/db;

    .line 100
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bh$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 101
    sget-object v1, Lu/aly/bh$a;->a:Lu/aly/bh$a;

    new-instance v4, Lu/aly/ct;

    const-string v5, "string_value"

    new-instance v6, Lu/aly/cu;

    invoke-direct {v6, v2}, Lu/aly/cu;-><init>(B)V

    const/4 v2, 0x3

    invoke-direct {v4, v5, v2, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Lu/aly/bh$a;->b:Lu/aly/bh$a;

    new-instance v4, Lu/aly/ct;

    const-string v5, "long_value"

    new-instance v6, Lu/aly/cu;

    invoke-direct {v6, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v4, v5, v2, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bh;->a:Ljava/util/Map;

    .line 106
    const-class v0, Lu/aly/bh;

    sget-object v1, Lu/aly/bh;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/ct;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Lu/aly/cr;-><init>()V

    return-void
.end method

.method public constructor <init>(Lu/aly/bh$a;Ljava/lang/Object;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2}, Lu/aly/cr;-><init>(Lu/aly/co;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lu/aly/bh;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lu/aly/cr;-><init>(Lu/aly/cr;)V

    return-void
.end method

.method public static a(J)Lu/aly/bh;
    .locals 1

    .line 131
    new-instance v0, Lu/aly/bh;

    invoke-direct {v0}, Lu/aly/bh;-><init>()V

    .line 132
    invoke-virtual {v0, p0, p1}, Lu/aly/bh;->b(J)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lu/aly/bh;
    .locals 1

    .line 125
    new-instance v0, Lu/aly/bh;

    invoke-direct {v0}, Lu/aly/bh;-><init>()V

    .line 126
    invoke-virtual {v0, p0}, Lu/aly/bh;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 344
    :try_start_0
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/bh;->a(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 346
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cn;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    :try_start_0
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/bh;->b(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 337
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cn;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected a(Lu/aly/dg;Lu/aly/db;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 157
    iget-short v0, p2, Lu/aly/db;->c:S

    invoke-static {v0}, Lu/aly/bh$a;->a(I)Lu/aly/bh$a;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 159
    sget-object v2, Lu/aly/bh$1;->a:[I

    invoke-virtual {v0}, Lu/aly/bh$a;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 179
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "setField wasn\'t null, but didn\'t match any of the case statements!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 170
    :pswitch_0
    iget-byte v0, p2, Lu/aly/db;->b:B

    sget-object v2, Lu/aly/bh;->f:Lu/aly/db;

    iget-byte v2, v2, Lu/aly/db;->b:B

    if-ne v0, v2, :cond_0

    .line 172
    invoke-virtual {p1}, Lu/aly/dg;->x()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 175
    :cond_0
    iget-byte p2, p2, Lu/aly/db;->b:B

    invoke-static {p1, p2}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    return-object v1

    .line 161
    :pswitch_1
    iget-byte v0, p2, Lu/aly/db;->b:B

    sget-object v2, Lu/aly/bh;->e:Lu/aly/db;

    iget-byte v2, v2, Lu/aly/db;->b:B

    if-ne v0, v2, :cond_1

    .line 163
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 166
    :cond_1
    iget-byte p2, p2, Lu/aly/db;->b:B

    invoke-static {p1, p2}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    return-object v1

    :cond_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Lu/aly/dg;S)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 204
    invoke-static {p2}, Lu/aly/bh$a;->a(I)Lu/aly/bh$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    sget-object p2, Lu/aly/bh$1;->a:[I

    invoke-virtual {v0}, Lu/aly/bh$a;->ordinal()I

    move-result v0

    aget p2, p2, v0

    packed-switch p2, :pswitch_data_0

    .line 216
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "setField wasn\'t null, but didn\'t match any of the case statements!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 213
    :pswitch_0
    invoke-virtual {p1}, Lu/aly/dg;->x()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 209
    :pswitch_1
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 219
    :cond_0
    new-instance p1, Lu/aly/dh;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find a field with field id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(I)Lu/aly/bh$a;
    .locals 0

    .line 262
    invoke-static {p1}, Lu/aly/bh$a;->a(I)Lu/aly/bh$a;

    move-result-object p1

    return-object p1
.end method

.method protected a(S)Lu/aly/bh$a;
    .locals 0

    .line 258
    invoke-static {p1}, Lu/aly/bh$a;->b(I)Lu/aly/bh$a;

    move-result-object p1

    return-object p1
.end method

.method public a()Lu/aly/bh;
    .locals 1

    .line 121
    new-instance v0, Lu/aly/bh;

    invoke-direct {v0, p0}, Lu/aly/bh;-><init>(Lu/aly/bh;)V

    return-object v0
.end method

.method protected a(Lu/aly/bh$a;)Lu/aly/db;
    .locals 3

    .line 241
    sget-object v0, Lu/aly/bh$1;->a:[I

    invoke-virtual {p1}, Lu/aly/bh$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown field id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :pswitch_0
    sget-object p1, Lu/aly/bh;->f:Lu/aly/db;

    return-object p1

    .line 243
    :pswitch_1
    sget-object p1, Lu/aly/bh;->e:Lu/aly/db;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic a(Lu/aly/co;)Lu/aly/db;
    .locals 0

    .line 32
    check-cast p1, Lu/aly/bh$a;

    invoke-virtual {p0, p1}, Lu/aly/bh;->a(Lu/aly/bh$a;)Lu/aly/db;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lu/aly/bh$a;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 139
    sget-object v0, Lu/aly/bh$1;->a:[I

    invoke-virtual {p1}, Lu/aly/bh$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 151
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown field id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 146
    :pswitch_0
    instance-of p1, p2, Ljava/lang/Long;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Was expecting value of type Long for field \'long_value\', but got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :pswitch_1
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_1

    :goto_0
    return-void

    .line 144
    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Was expecting value of type String for field \'string_value\', but got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic a(Lu/aly/co;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 32
    check-cast p1, Lu/aly/bh$a;

    invoke-virtual {p0, p1, p2}, Lu/aly/bh;->a(Lu/aly/bh$a;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lu/aly/bh;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 312
    invoke-virtual {p0}, Lu/aly/bh;->i()Lu/aly/co;

    move-result-object v0

    invoke-virtual {p1}, Lu/aly/bh;->i()Lu/aly/co;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lu/aly/bh;->j()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lu/aly/bh;->j()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Lu/aly/bh;)I
    .locals 2

    .line 317
    invoke-virtual {p0}, Lu/aly/bh;->i()Lu/aly/co;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-virtual {p1}, Lu/aly/bh;->i()Lu/aly/co;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-static {v0, v1}, Lu/aly/ci;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lu/aly/bh;->j()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lu/aly/bh;->j()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lu/aly/ci;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public synthetic b(I)Lu/aly/co;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lu/aly/bh;->a(I)Lu/aly/bh$a;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic b(S)Lu/aly/co;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lu/aly/bh;->a(S)Lu/aly/bh$a;

    move-result-object p1

    return-object p1
.end method

.method public b(J)V
    .locals 1

    .line 289
    sget-object v0, Lu/aly/bh$a;->b:Lu/aly/bh$a;

    iput-object v0, p0, Lu/aly/bh;->c:Lu/aly/co;

    .line 290
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lu/aly/bh;->b:Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 275
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 276
    :cond_0
    sget-object v0, Lu/aly/bh$a;->a:Lu/aly/bh$a;

    iput-object v0, p0, Lu/aly/bh;->c:Lu/aly/co;

    .line 277
    iput-object p1, p0, Lu/aly/bh;->b:Ljava/lang/Object;

    return-void
.end method

.method protected c()Lu/aly/dl;
    .locals 1

    .line 253
    sget-object v0, Lu/aly/bh;->d:Lu/aly/dl;

    return-object v0
.end method

.method protected c(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 188
    sget-object v0, Lu/aly/bh$1;->a:[I

    iget-object v1, p0, Lu/aly/bh;->c:Lu/aly/co;

    check-cast v1, Lu/aly/bh$a;

    invoke-virtual {v1}, Lu/aly/bh$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 198
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot write union with unknown field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu/aly/bh;->c:Lu/aly/co;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 194
    :pswitch_0
    iget-object v0, p0, Lu/aly/bh;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 195
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lu/aly/dg;->a(J)V

    return-void

    .line 190
    :pswitch_1
    iget-object v0, p0, Lu/aly/bh;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 191
    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 267
    invoke-virtual {p0}, Lu/aly/bh;->i()Lu/aly/co;

    move-result-object v0

    sget-object v1, Lu/aly/bh$a;->a:Lu/aly/bh$a;

    if-ne v0, v1, :cond_0

    .line 268
    invoke-virtual {p0}, Lu/aly/bh;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 270
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get field \'string_value\' because union is currently set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/bh;->i()Lu/aly/co;

    move-result-object v2

    check-cast v2, Lu/aly/bh$a;

    invoke-virtual {p0, v2}, Lu/aly/bh;->a(Lu/aly/bh$a;)Lu/aly/db;

    move-result-object v2

    iget-object v2, v2, Lu/aly/db;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected d(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 225
    sget-object v0, Lu/aly/bh$1;->a:[I

    iget-object v1, p0, Lu/aly/bh;->c:Lu/aly/co;

    check-cast v1, Lu/aly/bh$a;

    invoke-virtual {v1}, Lu/aly/bh$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 235
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot write union with unknown field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu/aly/bh;->c:Lu/aly/co;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 231
    :pswitch_0
    iget-object v0, p0, Lu/aly/bh;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 232
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lu/aly/dg;->a(J)V

    return-void

    .line 227
    :pswitch_1
    iget-object v0, p0, Lu/aly/bh;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 228
    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e()J
    .locals 3

    .line 281
    invoke-virtual {p0}, Lu/aly/bh;->i()Lu/aly/co;

    move-result-object v0

    sget-object v1, Lu/aly/bh$a;->b:Lu/aly/bh$a;

    if-ne v0, v1, :cond_0

    .line 282
    invoke-virtual {p0}, Lu/aly/bh;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get field \'long_value\' because union is currently set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/bh;->i()Lu/aly/co;

    move-result-object v2

    check-cast v2, Lu/aly/bh$a;

    invoke-virtual {p0, v2}, Lu/aly/bh;->a(Lu/aly/bh$a;)Lu/aly/db;

    move-result-object v2

    iget-object v2, v2, Lu/aly/db;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 304
    instance-of v0, p1, Lu/aly/bh;

    if-eqz v0, :cond_0

    .line 305
    check-cast p1, Lu/aly/bh;

    invoke-virtual {p0, p1}, Lu/aly/bh;->a(Lu/aly/bh;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f()Z
    .locals 2

    .line 294
    iget-object v0, p0, Lu/aly/bh;->c:Lu/aly/co;

    sget-object v1, Lu/aly/bh$a;->a:Lu/aly/bh$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic g()Lu/aly/ch;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lu/aly/bh;->a()Lu/aly/bh;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 2

    .line 299
    iget-object v0, p0, Lu/aly/bh;->c:Lu/aly/co;

    sget-object v1, Lu/aly/bh$a;->b:Lu/aly/bh$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
