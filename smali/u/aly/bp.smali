.class public Lu/aly/bp;
.super Ljava/lang/Object;
.source "UMEnvelope.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/ch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bp$c;,
        Lu/aly/bp$d;,
        Lu/aly/bp$a;,
        Lu/aly/bp$b;,
        Lu/aly/bp$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/ch<",
        "Lu/aly/bp;",
        "Lu/aly/bp$e;",
        ">;"
    }
.end annotation


# static fields
.field private static final A:I = 0x3

.field public static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/bp$e;",
            "Lu/aly/ct;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Lu/aly/dl;

.field private static final m:Lu/aly/db;

.field private static final n:Lu/aly/db;

.field private static final o:Lu/aly/db;

.field private static final p:Lu/aly/db;

.field private static final q:Lu/aly/db;

.field private static final r:Lu/aly/db;

.field private static final s:Lu/aly/db;

.field private static final t:Lu/aly/db;

.field private static final u:Lu/aly/db;

.field private static final v:Lu/aly/db;

.field private static final w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lu/aly/do;",
            ">;",
            "Lu/aly/dp;",
            ">;"
        }
    .end annotation
.end field

.field private static final x:I = 0x0

.field private static final y:I = 0x1

.field private static final z:I = 0x2


# instance fields
.field private B:B

.field private C:[Lu/aly/bp$e;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/nio/ByteBuffer;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 32
    new-instance v0, Lu/aly/dl;

    const-string v1, "UMEnvelope"

    invoke-direct {v0, v1}, Lu/aly/dl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bp;->l:Lu/aly/dl;

    .line 34
    new-instance v0, Lu/aly/db;

    const-string v1, "version"

    const/4 v2, 0x1

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v2}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bp;->m:Lu/aly/db;

    .line 35
    new-instance v0, Lu/aly/db;

    const-string v1, "address"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bp;->n:Lu/aly/db;

    .line 36
    new-instance v0, Lu/aly/db;

    const-string v1, "signature"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v3, v5}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bp;->o:Lu/aly/db;

    .line 37
    new-instance v0, Lu/aly/db;

    const-string v1, "serial_num"

    const/16 v5, 0x8

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bp;->p:Lu/aly/db;

    .line 38
    new-instance v0, Lu/aly/db;

    const-string v1, "ts_secs"

    const/4 v6, 0x5

    invoke-direct {v0, v1, v5, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bp;->q:Lu/aly/db;

    .line 39
    new-instance v0, Lu/aly/db;

    const-string v1, "length"

    const/4 v6, 0x6

    invoke-direct {v0, v1, v5, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bp;->r:Lu/aly/db;

    .line 40
    new-instance v0, Lu/aly/db;

    const-string v1, "entity"

    const/4 v6, 0x7

    invoke-direct {v0, v1, v3, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bp;->s:Lu/aly/db;

    .line 41
    new-instance v0, Lu/aly/db;

    const-string v1, "guid"

    invoke-direct {v0, v1, v3, v5}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bp;->t:Lu/aly/db;

    .line 42
    new-instance v0, Lu/aly/db;

    const-string v1, "checksum"

    const/16 v6, 0x9

    invoke-direct {v0, v1, v3, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bp;->u:Lu/aly/db;

    .line 43
    new-instance v0, Lu/aly/db;

    const-string v1, "codex"

    const/16 v6, 0xa

    invoke-direct {v0, v1, v5, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bp;->v:Lu/aly/db;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bp;->w:Ljava/util/Map;

    .line 47
    sget-object v0, Lu/aly/bp;->w:Ljava/util/Map;

    const-class v1, Lu/aly/dq;

    new-instance v6, Lu/aly/bp$b;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lu/aly/bp$b;-><init>(Lu/aly/bp$1;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lu/aly/bp;->w:Ljava/util/Map;

    const-class v1, Lu/aly/dr;

    new-instance v6, Lu/aly/bp$d;

    invoke-direct {v6, v7}, Lu/aly/bp$d;-><init>(Lu/aly/bp$1;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bp$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 157
    sget-object v1, Lu/aly/bp$e;->a:Lu/aly/bp$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "version"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v1, Lu/aly/bp$e;->b:Lu/aly/bp$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "address"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v1, Lu/aly/bp$e;->c:Lu/aly/bp$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "signature"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v1, Lu/aly/bp$e;->d:Lu/aly/bp$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "serial_num"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v5}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v1, Lu/aly/bp$e;->e:Lu/aly/bp$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "ts_secs"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v5}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v1, Lu/aly/bp$e;->f:Lu/aly/bp$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "length"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v5}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v1, Lu/aly/bp$e;->g:Lu/aly/bp$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "entity"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v3, v2}, Lu/aly/cu;-><init>(BZ)V

    invoke-direct {v6, v7, v2, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v1, Lu/aly/bp$e;->h:Lu/aly/bp$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "guid"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v1, Lu/aly/bp$e;->i:Lu/aly/bp$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "checksum"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v1, Lu/aly/bp$e;->j:Lu/aly/bp$e;

    new-instance v2, Lu/aly/ct;

    const-string v3, "codex"

    new-instance v6, Lu/aly/cu;

    invoke-direct {v6, v5}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v2, v3, v4, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bp;->k:Ljava/util/Map;

    .line 178
    const-class v0, Lu/aly/bp;

    sget-object v1, Lu/aly/bp;->k:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/ct;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 152
    iput-byte v0, p0, Lu/aly/bp;->B:B

    const/4 v1, 0x1

    .line 153
    new-array v1, v1, [Lu/aly/bp$e;

    sget-object v2, Lu/aly/bp$e;->j:Lu/aly/bp$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lu/aly/bp;->C:[Lu/aly/bp$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 195
    invoke-direct {p0}, Lu/aly/bp;-><init>()V

    .line 196
    iput-object p1, p0, Lu/aly/bp;->a:Ljava/lang/String;

    .line 197
    iput-object p2, p0, Lu/aly/bp;->b:Ljava/lang/String;

    .line 198
    iput-object p3, p0, Lu/aly/bp;->c:Ljava/lang/String;

    .line 199
    iput p4, p0, Lu/aly/bp;->d:I

    const/4 p1, 0x1

    .line 200
    invoke-virtual {p0, p1}, Lu/aly/bp;->d(Z)V

    .line 201
    iput p5, p0, Lu/aly/bp;->e:I

    .line 202
    invoke-virtual {p0, p1}, Lu/aly/bp;->e(Z)V

    .line 203
    iput p6, p0, Lu/aly/bp;->f:I

    .line 204
    invoke-virtual {p0, p1}, Lu/aly/bp;->f(Z)V

    .line 205
    iput-object p7, p0, Lu/aly/bp;->g:Ljava/nio/ByteBuffer;

    .line 206
    iput-object p8, p0, Lu/aly/bp;->h:Ljava/lang/String;

    .line 207
    iput-object p9, p0, Lu/aly/bp;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lu/aly/bp;)V
    .locals 3

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 152
    iput-byte v0, p0, Lu/aly/bp;->B:B

    const/4 v1, 0x1

    .line 153
    new-array v1, v1, [Lu/aly/bp$e;

    sget-object v2, Lu/aly/bp$e;->j:Lu/aly/bp$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lu/aly/bp;->C:[Lu/aly/bp$e;

    .line 214
    iget-byte v0, p1, Lu/aly/bp;->B:B

    iput-byte v0, p0, Lu/aly/bp;->B:B

    .line 215
    invoke-virtual {p1}, Lu/aly/bp;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p1, Lu/aly/bp;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bp;->a:Ljava/lang/String;

    .line 218
    :cond_0
    invoke-virtual {p1}, Lu/aly/bp;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p1, Lu/aly/bp;->b:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bp;->b:Ljava/lang/String;

    .line 221
    :cond_1
    invoke-virtual {p1}, Lu/aly/bp;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p1, Lu/aly/bp;->c:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bp;->c:Ljava/lang/String;

    .line 224
    :cond_2
    iget v0, p1, Lu/aly/bp;->d:I

    iput v0, p0, Lu/aly/bp;->d:I

    .line 225
    iget v0, p1, Lu/aly/bp;->e:I

    iput v0, p0, Lu/aly/bp;->e:I

    .line 226
    iget v0, p1, Lu/aly/bp;->f:I

    iput v0, p0, Lu/aly/bp;->f:I

    .line 227
    invoke-virtual {p1}, Lu/aly/bp;->y()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p1, Lu/aly/bp;->g:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lu/aly/ci;->d(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lu/aly/bp;->g:Ljava/nio/ByteBuffer;

    .line 231
    :cond_3
    invoke-virtual {p1}, Lu/aly/bp;->B()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 232
    iget-object v0, p1, Lu/aly/bp;->h:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bp;->h:Ljava/lang/String;

    .line 234
    :cond_4
    invoke-virtual {p1}, Lu/aly/bp;->E()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 235
    iget-object v0, p1, Lu/aly/bp;->i:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bp;->i:Ljava/lang/String;

    .line 237
    :cond_5
    iget p1, p1, Lu/aly/bp;->j:I

    iput p1, p0, Lu/aly/bp;->j:I

    return-void
.end method

.method static synthetic J()Lu/aly/dl;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bp;->l:Lu/aly/dl;

    return-object v0
.end method

.method static synthetic K()Lu/aly/db;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bp;->m:Lu/aly/db;

    return-object v0
.end method

.method static synthetic L()Lu/aly/db;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bp;->n:Lu/aly/db;

    return-object v0
.end method

.method static synthetic M()Lu/aly/db;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bp;->o:Lu/aly/db;

    return-object v0
.end method

.method static synthetic N()Lu/aly/db;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bp;->p:Lu/aly/db;

    return-object v0
.end method

.method static synthetic O()Lu/aly/db;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bp;->q:Lu/aly/db;

    return-object v0
.end method

.method static synthetic P()Lu/aly/db;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bp;->r:Lu/aly/db;

    return-object v0
.end method

.method static synthetic Q()Lu/aly/db;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bp;->s:Lu/aly/db;

    return-object v0
.end method

.method static synthetic R()Lu/aly/db;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bp;->t:Lu/aly/db;

    return-object v0
.end method

.method static synthetic S()Lu/aly/db;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bp;->u:Lu/aly/db;

    return-object v0
.end method

.method static synthetic T()Lu/aly/db;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bp;->v:Lu/aly/db;

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

    const/4 v0, 0x0

    .line 631
    :try_start_0
    iput-byte v0, p0, Lu/aly/bp;->B:B

    .line 632
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/bp;->a(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 634
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

    .line 622
    :try_start_0
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/bp;->b(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 624
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cn;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A()V
    .locals 1

    const/4 v0, 0x0

    .line 447
    iput-object v0, p0, Lu/aly/bp;->h:Ljava/lang/String;

    return-void
.end method

.method public B()Z
    .locals 1

    .line 452
    iget-object v0, p0, Lu/aly/bp;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .line 462
    iget-object v0, p0, Lu/aly/bp;->i:Ljava/lang/String;

    return-object v0
.end method

.method public D()V
    .locals 1

    const/4 v0, 0x0

    .line 471
    iput-object v0, p0, Lu/aly/bp;->i:Ljava/lang/String;

    return-void
.end method

.method public E()Z
    .locals 1

    .line 476
    iget-object v0, p0, Lu/aly/bp;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public F()I
    .locals 1

    .line 486
    iget v0, p0, Lu/aly/bp;->j:I

    return v0
.end method

.method public G()V
    .locals 2

    .line 496
    iget-byte v0, p0, Lu/aly/bp;->B:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bp;->B:B

    return-void
.end method

.method public H()Z
    .locals 2

    .line 501
    iget-byte v0, p0, Lu/aly/bp;->B:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public I()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lu/aly/bp;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 597
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'version\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/bp;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_0
    iget-object v0, p0, Lu/aly/bp;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 600
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'address\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/bp;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_1
    iget-object v0, p0, Lu/aly/bp;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 603
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'signature\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/bp;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_2
    iget-object v0, p0, Lu/aly/bp;->g:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_3

    .line 609
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'entity\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/bp;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_3
    iget-object v0, p0, Lu/aly/bp;->h:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 612
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'guid\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/bp;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :cond_4
    iget-object v0, p0, Lu/aly/bp;->i:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 615
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'checksum\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/bp;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void
.end method

.method public a()Lu/aly/bp;
    .locals 1

    .line 241
    new-instance v0, Lu/aly/bp;

    invoke-direct {v0, p0}, Lu/aly/bp;-><init>(Lu/aly/bp;)V

    return-object v0
.end method

.method public a(I)Lu/aly/bp;
    .locals 0

    .line 339
    iput p1, p0, Lu/aly/bp;->d:I

    const/4 p1, 0x1

    .line 340
    invoke-virtual {p0, p1}, Lu/aly/bp;->d(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/bp;
    .locals 0

    .line 267
    iput-object p1, p0, Lu/aly/bp;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/nio/ByteBuffer;)Lu/aly/bp;
    .locals 0

    .line 418
    iput-object p1, p0, Lu/aly/bp;->g:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public a([B)Lu/aly/bp;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 413
    check-cast p1, Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lu/aly/bp;->a(Ljava/nio/ByteBuffer;)Lu/aly/bp;

    return-object p0
.end method

.method public a(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 513
    sget-object v0, Lu/aly/bp;->w:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dg;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dp;

    invoke-interface {v0}, Lu/aly/dp;->b()Lu/aly/do;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/do;->b(Lu/aly/dg;Lu/aly/ch;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 282
    iput-object p1, p0, Lu/aly/bp;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lu/aly/bp;
    .locals 0

    .line 291
    iput-object p1, p0, Lu/aly/bp;->b:Ljava/lang/String;

    return-object p0
.end method

.method public synthetic b(I)Lu/aly/co;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lu/aly/bp;->f(I)Lu/aly/bp$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Lu/aly/bp;->a:Ljava/lang/String;

    .line 247
    iput-object v0, p0, Lu/aly/bp;->b:Ljava/lang/String;

    .line 248
    iput-object v0, p0, Lu/aly/bp;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 249
    invoke-virtual {p0, v1}, Lu/aly/bp;->d(Z)V

    .line 250
    iput v1, p0, Lu/aly/bp;->d:I

    .line 251
    invoke-virtual {p0, v1}, Lu/aly/bp;->e(Z)V

    .line 252
    iput v1, p0, Lu/aly/bp;->e:I

    .line 253
    invoke-virtual {p0, v1}, Lu/aly/bp;->f(Z)V

    .line 254
    iput v1, p0, Lu/aly/bp;->f:I

    .line 255
    iput-object v0, p0, Lu/aly/bp;->g:Ljava/nio/ByteBuffer;

    .line 256
    iput-object v0, p0, Lu/aly/bp;->h:Ljava/lang/String;

    .line 257
    iput-object v0, p0, Lu/aly/bp;->i:Ljava/lang/String;

    .line 258
    invoke-virtual {p0, v1}, Lu/aly/bp;->j(Z)V

    .line 259
    iput v1, p0, Lu/aly/bp;->j:I

    return-void
.end method

.method public b(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 517
    sget-object v0, Lu/aly/bp;->w:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dg;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dp;

    invoke-interface {v0}, Lu/aly/dp;->b()Lu/aly/do;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/do;->a(Lu/aly/dg;Lu/aly/ch;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 306
    iput-object p1, p0, Lu/aly/bp;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lu/aly/bp;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)Lu/aly/bp;
    .locals 0

    .line 362
    iput p1, p0, Lu/aly/bp;->e:I

    const/4 p1, 0x1

    .line 363
    invoke-virtual {p0, p1}, Lu/aly/bp;->e(Z)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lu/aly/bp;
    .locals 0

    .line 315
    iput-object p1, p0, Lu/aly/bp;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 330
    iput-object p1, p0, Lu/aly/bp;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public d(I)Lu/aly/bp;
    .locals 0

    .line 385
    iput p1, p0, Lu/aly/bp;->f:I

    const/4 p1, 0x1

    .line 386
    invoke-virtual {p0, p1}, Lu/aly/bp;->f(Z)V

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lu/aly/bp;
    .locals 0

    .line 442
    iput-object p1, p0, Lu/aly/bp;->h:Ljava/lang/String;

    return-object p0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 272
    iput-object v0, p0, Lu/aly/bp;->a:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 354
    iget-byte v0, p0, Lu/aly/bp;->B:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/bp;->B:B

    return-void
.end method

.method public e(I)Lu/aly/bp;
    .locals 0

    .line 490
    iput p1, p0, Lu/aly/bp;->j:I

    const/4 p1, 0x1

    .line 491
    invoke-virtual {p0, p1}, Lu/aly/bp;->j(Z)V

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lu/aly/bp;
    .locals 0

    .line 466
    iput-object p1, p0, Lu/aly/bp;->i:Ljava/lang/String;

    return-object p0
.end method

.method public e(Z)V
    .locals 2

    .line 377
    iget-byte v0, p0, Lu/aly/bp;->B:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/bp;->B:B

    return-void
.end method

.method public e()Z
    .locals 1

    .line 277
    iget-object v0, p0, Lu/aly/bp;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lu/aly/bp;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f(I)Lu/aly/bp$e;
    .locals 0

    .line 509
    invoke-static {p1}, Lu/aly/bp$e;->a(I)Lu/aly/bp$e;

    move-result-object p1

    return-object p1
.end method

.method public f(Z)V
    .locals 2

    .line 400
    iget-byte v0, p0, Lu/aly/bp;->B:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/bp;->B:B

    return-void
.end method

.method public synthetic g()Lu/aly/ch;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lu/aly/bp;->a()Lu/aly/bp;

    move-result-object v0

    return-object v0
.end method

.method public g(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 433
    iput-object p1, p0, Lu/aly/bp;->g:Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 296
    iput-object v0, p0, Lu/aly/bp;->b:Ljava/lang/String;

    return-void
.end method

.method public h(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 457
    iput-object p1, p0, Lu/aly/bp;->h:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 481
    iput-object p1, p0, Lu/aly/bp;->i:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    .line 301
    iget-object v0, p0, Lu/aly/bp;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lu/aly/bp;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j(Z)V
    .locals 2

    .line 505
    iget-byte v0, p0, Lu/aly/bp;->B:B

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/bp;->B:B

    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    .line 320
    iput-object v0, p0, Lu/aly/bp;->c:Ljava/lang/String;

    return-void
.end method

.method public l()Z
    .locals 1

    .line 325
    iget-object v0, p0, Lu/aly/bp;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()I
    .locals 1

    .line 335
    iget v0, p0, Lu/aly/bp;->d:I

    return v0
.end method

.method public n()V
    .locals 2

    .line 345
    iget-byte v0, p0, Lu/aly/bp;->B:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bp;->B:B

    return-void
.end method

.method public o()Z
    .locals 2

    .line 350
    iget-byte v0, p0, Lu/aly/bp;->B:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public p()I
    .locals 1

    .line 358
    iget v0, p0, Lu/aly/bp;->e:I

    return v0
.end method

.method public q()V
    .locals 2

    .line 368
    iget-byte v0, p0, Lu/aly/bp;->B:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bp;->B:B

    return-void
.end method

.method public r()Z
    .locals 2

    .line 373
    iget-byte v0, p0, Lu/aly/bp;->B:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public s()I
    .locals 1

    .line 381
    iget v0, p0, Lu/aly/bp;->f:I

    return v0
.end method

.method public t()V
    .locals 2

    .line 391
    iget-byte v0, p0, Lu/aly/bp;->B:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bp;->B:B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UMEnvelope("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "version:"

    .line 525
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    iget-object v1, p0, Lu/aly/bp;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    .line 527
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 529
    :cond_0
    iget-object v1, p0, Lu/aly/bp;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    .line 532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "address:"

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    iget-object v1, p0, Lu/aly/bp;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "null"

    .line 535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 537
    :cond_1
    iget-object v1, p0, Lu/aly/bp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, ", "

    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "signature:"

    .line 541
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    iget-object v1, p0, Lu/aly/bp;->c:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "null"

    .line 543
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 545
    :cond_2
    iget-object v1, p0, Lu/aly/bp;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, ", "

    .line 548
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "serial_num:"

    .line 549
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget v1, p0, Lu/aly/bp;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ts_secs:"

    .line 553
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    iget v1, p0, Lu/aly/bp;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "length:"

    .line 557
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    iget v1, p0, Lu/aly/bp;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 560
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "entity:"

    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    iget-object v1, p0, Lu/aly/bp;->g:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_3

    const-string v1, "null"

    .line 563
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 565
    :cond_3
    iget-object v1, p0, Lu/aly/bp;->g:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lu/aly/ci;->a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    :goto_3
    const-string v1, ", "

    .line 568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "guid:"

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    iget-object v1, p0, Lu/aly/bp;->h:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, "null"

    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 573
    :cond_4
    iget-object v1, p0, Lu/aly/bp;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const-string v1, ", "

    .line 576
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "checksum:"

    .line 577
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    iget-object v1, p0, Lu/aly/bp;->i:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, "null"

    .line 579
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 581
    :cond_5
    iget-object v1, p0, Lu/aly/bp;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    :goto_5
    invoke-virtual {p0}, Lu/aly/bp;->H()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, ", "

    .line 585
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "codex:"

    .line 586
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget v1, p0, Lu/aly/bp;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6
    const-string v1, ")"

    .line 590
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 2

    .line 396
    iget-byte v0, p0, Lu/aly/bp;->B:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public v()[B
    .locals 1

    .line 404
    iget-object v0, p0, Lu/aly/bp;->g:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lu/aly/ci;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/aly/bp;->a(Ljava/nio/ByteBuffer;)Lu/aly/bp;

    .line 405
    iget-object v0, p0, Lu/aly/bp;->g:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu/aly/bp;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public w()Ljava/nio/ByteBuffer;
    .locals 1

    .line 409
    iget-object v0, p0, Lu/aly/bp;->g:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x0

    .line 423
    iput-object v0, p0, Lu/aly/bp;->g:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public y()Z
    .locals 1

    .line 428
    iget-object v0, p0, Lu/aly/bp;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 438
    iget-object v0, p0, Lu/aly/bp;->h:Ljava/lang/String;

    return-object v0
.end method
