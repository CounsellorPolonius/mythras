.class public Lu/aly/ar;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/ch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/ar$c;,
        Lu/aly/ar$d;,
        Lu/aly/ar$a;,
        Lu/aly/ar$b;,
        Lu/aly/ar$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/ch<",
        "Lu/aly/ar;",
        "Lu/aly/ar$e;",
        ">;"
    }
.end annotation


# static fields
.field private static final A:Lu/aly/db;

.field private static final B:Lu/aly/db;

.field private static final C:Lu/aly/db;

.field private static final D:Lu/aly/db;

.field private static final E:Lu/aly/db;

.field private static final F:Lu/aly/db;

.field private static final G:Lu/aly/db;

.field private static final H:Lu/aly/db;

.field private static final I:Lu/aly/db;

.field private static final J:Lu/aly/db;

.field private static final K:Ljava/util/Map;
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

.field private static final L:I = 0x0

.field private static final M:I = 0x1

.field private static final N:I = 0x2

.field public static final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/ar$e;",
            "Lu/aly/ct;",
            ">;"
        }
    .end annotation
.end field

.field private static final s:Lu/aly/dl;

.field private static final t:Lu/aly/db;

.field private static final u:Lu/aly/db;

.field private static final v:Lu/aly/db;

.field private static final w:Lu/aly/db;

.field private static final x:Lu/aly/db;

.field private static final y:Lu/aly/db;

.field private static final z:Lu/aly/db;


# instance fields
.field private O:B

.field private P:[Lu/aly/ar$e;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Lu/aly/bi;

.field public j:Z

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:J

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 33
    new-instance v0, Lu/aly/dl;

    const-string v1, "DeviceInfo"

    invoke-direct {v0, v1}, Lu/aly/dl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/ar;->s:Lu/aly/dl;

    .line 35
    new-instance v0, Lu/aly/db;

    const-string v1, "device_id"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->t:Lu/aly/db;

    .line 36
    new-instance v0, Lu/aly/db;

    const-string v1, "idmd5"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->u:Lu/aly/db;

    .line 37
    new-instance v0, Lu/aly/db;

    const-string v1, "mac_address"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v4}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->v:Lu/aly/db;

    .line 38
    new-instance v0, Lu/aly/db;

    const-string v1, "open_udid"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v4}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->w:Lu/aly/db;

    .line 39
    new-instance v0, Lu/aly/db;

    const-string v1, "model"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v4}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->x:Lu/aly/db;

    .line 40
    new-instance v0, Lu/aly/db;

    const-string v1, "cpu"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v4}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->y:Lu/aly/db;

    .line 41
    new-instance v0, Lu/aly/db;

    const-string v1, "os"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v4}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->z:Lu/aly/db;

    .line 42
    new-instance v0, Lu/aly/db;

    const-string v1, "os_version"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v4}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->A:Lu/aly/db;

    .line 43
    new-instance v0, Lu/aly/db;

    const-string v1, "resolution"

    const/16 v4, 0xc

    const/16 v5, 0x9

    invoke-direct {v0, v1, v4, v5}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->B:Lu/aly/db;

    .line 44
    new-instance v0, Lu/aly/db;

    const-string v1, "is_jailbroken"

    const/16 v5, 0xa

    invoke-direct {v0, v1, v3, v5}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->C:Lu/aly/db;

    .line 45
    new-instance v0, Lu/aly/db;

    const-string v1, "is_pirated"

    invoke-direct {v0, v1, v3, v2}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->D:Lu/aly/db;

    .line 46
    new-instance v0, Lu/aly/db;

    const-string v1, "device_board"

    invoke-direct {v0, v1, v2, v4}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->E:Lu/aly/db;

    .line 47
    new-instance v0, Lu/aly/db;

    const-string v1, "device_brand"

    const/16 v6, 0xd

    invoke-direct {v0, v1, v2, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->F:Lu/aly/db;

    .line 48
    new-instance v0, Lu/aly/db;

    const-string v1, "device_manutime"

    const/16 v6, 0xe

    invoke-direct {v0, v1, v5, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->G:Lu/aly/db;

    .line 49
    new-instance v0, Lu/aly/db;

    const-string v1, "device_manufacturer"

    const/16 v6, 0xf

    invoke-direct {v0, v1, v2, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->H:Lu/aly/db;

    .line 50
    new-instance v0, Lu/aly/db;

    const-string v1, "device_manuid"

    const/16 v6, 0x10

    invoke-direct {v0, v1, v2, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->I:Lu/aly/db;

    .line 51
    new-instance v0, Lu/aly/db;

    const-string v1, "device_name"

    const/16 v6, 0x11

    invoke-direct {v0, v1, v2, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->J:Lu/aly/db;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/ar;->K:Ljava/util/Map;

    .line 55
    sget-object v0, Lu/aly/ar;->K:Ljava/util/Map;

    const-class v1, Lu/aly/dq;

    new-instance v6, Lu/aly/ar$b;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lu/aly/ar$b;-><init>(Lu/aly/ar$1;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lu/aly/ar;->K:Ljava/util/Map;

    const-class v1, Lu/aly/dr;

    new-instance v6, Lu/aly/ar$d;

    invoke-direct {v6, v7}, Lu/aly/ar$d;-><init>(Lu/aly/ar$1;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/ar$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 192
    sget-object v1, Lu/aly/ar$e;->a:Lu/aly/ar$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "device_id"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v2}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v3, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v1, Lu/aly/ar$e;->b:Lu/aly/ar$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "idmd5"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v2}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v3, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v1, Lu/aly/ar$e;->c:Lu/aly/ar$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "mac_address"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v2}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v3, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v1, Lu/aly/ar$e;->d:Lu/aly/ar$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "open_udid"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v2}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v3, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v1, Lu/aly/ar$e;->e:Lu/aly/ar$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "model"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v2}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v3, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v1, Lu/aly/ar$e;->f:Lu/aly/ar$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "cpu"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v2}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v3, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v1, Lu/aly/ar$e;->g:Lu/aly/ar$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "os"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v2}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v3, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v1, Lu/aly/ar$e;->h:Lu/aly/ar$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "os_version"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v2}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v3, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v1, Lu/aly/ar$e;->i:Lu/aly/ar$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "resolution"

    new-instance v8, Lu/aly/cy;

    const-class v9, Lu/aly/bi;

    invoke-direct {v8, v4, v9}, Lu/aly/cy;-><init>(BLjava/lang/Class;)V

    invoke-direct {v6, v7, v3, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v1, Lu/aly/ar$e;->j:Lu/aly/ar$e;

    new-instance v4, Lu/aly/ct;

    const-string v6, "is_jailbroken"

    new-instance v7, Lu/aly/cu;

    invoke-direct {v7, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v4, v6, v3, v7}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v1, Lu/aly/ar$e;->k:Lu/aly/ar$e;

    new-instance v4, Lu/aly/ct;

    const-string v6, "is_pirated"

    new-instance v7, Lu/aly/cu;

    invoke-direct {v7, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v4, v6, v3, v7}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v1, Lu/aly/ar$e;->l:Lu/aly/ar$e;

    new-instance v4, Lu/aly/ct;

    const-string v6, "device_board"

    new-instance v7, Lu/aly/cu;

    invoke-direct {v7, v2}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v4, v6, v3, v7}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v1, Lu/aly/ar$e;->m:Lu/aly/ar$e;

    new-instance v4, Lu/aly/ct;

    const-string v6, "device_brand"

    new-instance v7, Lu/aly/cu;

    invoke-direct {v7, v2}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v4, v6, v3, v7}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v1, Lu/aly/ar$e;->n:Lu/aly/ar$e;

    new-instance v4, Lu/aly/ct;

    const-string v6, "device_manutime"

    new-instance v7, Lu/aly/cu;

    invoke-direct {v7, v5}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v4, v6, v3, v7}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v1, Lu/aly/ar$e;->o:Lu/aly/ar$e;

    new-instance v4, Lu/aly/ct;

    const-string v5, "device_manufacturer"

    new-instance v6, Lu/aly/cu;

    invoke-direct {v6, v2}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v4, v5, v3, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v1, Lu/aly/ar$e;->p:Lu/aly/ar$e;

    new-instance v4, Lu/aly/ct;

    const-string v5, "device_manuid"

    new-instance v6, Lu/aly/cu;

    invoke-direct {v6, v2}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v4, v5, v3, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v1, Lu/aly/ar$e;->q:Lu/aly/ar$e;

    new-instance v4, Lu/aly/ct;

    const-string v5, "device_name"

    new-instance v6, Lu/aly/cu;

    invoke-direct {v6, v2}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v4, v5, v3, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/ar;->r:Ljava/util/Map;

    .line 227
    const-class v0, Lu/aly/ar;

    sget-object v1, Lu/aly/ar;->r:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/ct;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 187
    iput-byte v0, p0, Lu/aly/ar;->O:B

    const/16 v1, 0x11

    .line 188
    new-array v1, v1, [Lu/aly/ar$e;

    sget-object v2, Lu/aly/ar$e;->a:Lu/aly/ar$e;

    aput-object v2, v1, v0

    sget-object v0, Lu/aly/ar$e;->b:Lu/aly/ar$e;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->c:Lu/aly/ar$e;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->d:Lu/aly/ar$e;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->e:Lu/aly/ar$e;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->f:Lu/aly/ar$e;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->g:Lu/aly/ar$e;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->h:Lu/aly/ar$e;

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->i:Lu/aly/ar$e;

    const/16 v2, 0x8

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->j:Lu/aly/ar$e;

    const/16 v2, 0x9

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->k:Lu/aly/ar$e;

    const/16 v2, 0xa

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->l:Lu/aly/ar$e;

    const/16 v2, 0xb

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->m:Lu/aly/ar$e;

    const/16 v2, 0xc

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->n:Lu/aly/ar$e;

    const/16 v2, 0xd

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->o:Lu/aly/ar$e;

    const/16 v2, 0xe

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->p:Lu/aly/ar$e;

    const/16 v2, 0xf

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->q:Lu/aly/ar$e;

    const/16 v2, 0x10

    aput-object v0, v1, v2

    iput-object v1, p0, Lu/aly/ar;->P:[Lu/aly/ar$e;

    return-void
.end method

.method public constructor <init>(Lu/aly/ar;)V
    .locals 3

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 187
    iput-byte v0, p0, Lu/aly/ar;->O:B

    const/16 v1, 0x11

    .line 188
    new-array v1, v1, [Lu/aly/ar$e;

    sget-object v2, Lu/aly/ar$e;->a:Lu/aly/ar$e;

    aput-object v2, v1, v0

    sget-object v0, Lu/aly/ar$e;->b:Lu/aly/ar$e;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->c:Lu/aly/ar$e;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->d:Lu/aly/ar$e;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->e:Lu/aly/ar$e;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->f:Lu/aly/ar$e;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->g:Lu/aly/ar$e;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->h:Lu/aly/ar$e;

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->i:Lu/aly/ar$e;

    const/16 v2, 0x8

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->j:Lu/aly/ar$e;

    const/16 v2, 0x9

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->k:Lu/aly/ar$e;

    const/16 v2, 0xa

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->l:Lu/aly/ar$e;

    const/16 v2, 0xb

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->m:Lu/aly/ar$e;

    const/16 v2, 0xc

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->n:Lu/aly/ar$e;

    const/16 v2, 0xd

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->o:Lu/aly/ar$e;

    const/16 v2, 0xe

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->p:Lu/aly/ar$e;

    const/16 v2, 0xf

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->q:Lu/aly/ar$e;

    const/16 v2, 0x10

    aput-object v0, v1, v2

    iput-object v1, p0, Lu/aly/ar;->P:[Lu/aly/ar$e;

    .line 237
    iget-byte v0, p1, Lu/aly/ar;->O:B

    iput-byte v0, p0, Lu/aly/ar;->O:B

    .line 238
    invoke-virtual {p1}, Lu/aly/ar;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p1, Lu/aly/ar;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ar;->a:Ljava/lang/String;

    .line 241
    :cond_0
    invoke-virtual {p1}, Lu/aly/ar;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p1, Lu/aly/ar;->b:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ar;->b:Ljava/lang/String;

    .line 244
    :cond_1
    invoke-virtual {p1}, Lu/aly/ar;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p1, Lu/aly/ar;->c:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ar;->c:Ljava/lang/String;

    .line 247
    :cond_2
    invoke-virtual {p1}, Lu/aly/ar;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 248
    iget-object v0, p1, Lu/aly/ar;->d:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ar;->d:Ljava/lang/String;

    .line 250
    :cond_3
    invoke-virtual {p1}, Lu/aly/ar;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 251
    iget-object v0, p1, Lu/aly/ar;->e:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ar;->e:Ljava/lang/String;

    .line 253
    :cond_4
    invoke-virtual {p1}, Lu/aly/ar;->u()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 254
    iget-object v0, p1, Lu/aly/ar;->f:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ar;->f:Ljava/lang/String;

    .line 256
    :cond_5
    invoke-virtual {p1}, Lu/aly/ar;->x()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 257
    iget-object v0, p1, Lu/aly/ar;->g:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ar;->g:Ljava/lang/String;

    .line 259
    :cond_6
    invoke-virtual {p1}, Lu/aly/ar;->A()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 260
    iget-object v0, p1, Lu/aly/ar;->h:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ar;->h:Ljava/lang/String;

    .line 262
    :cond_7
    invoke-virtual {p1}, Lu/aly/ar;->D()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 263
    new-instance v0, Lu/aly/bi;

    iget-object v1, p1, Lu/aly/ar;->i:Lu/aly/bi;

    invoke-direct {v0, v1}, Lu/aly/bi;-><init>(Lu/aly/bi;)V

    iput-object v0, p0, Lu/aly/ar;->i:Lu/aly/bi;

    .line 265
    :cond_8
    iget-boolean v0, p1, Lu/aly/ar;->j:Z

    iput-boolean v0, p0, Lu/aly/ar;->j:Z

    .line 266
    iget-boolean v0, p1, Lu/aly/ar;->k:Z

    iput-boolean v0, p0, Lu/aly/ar;->k:Z

    .line 267
    invoke-virtual {p1}, Lu/aly/ar;->M()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 268
    iget-object v0, p1, Lu/aly/ar;->l:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ar;->l:Ljava/lang/String;

    .line 270
    :cond_9
    invoke-virtual {p1}, Lu/aly/ar;->P()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 271
    iget-object v0, p1, Lu/aly/ar;->m:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ar;->m:Ljava/lang/String;

    .line 273
    :cond_a
    iget-wide v0, p1, Lu/aly/ar;->n:J

    iput-wide v0, p0, Lu/aly/ar;->n:J

    .line 274
    invoke-virtual {p1}, Lu/aly/ar;->V()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 275
    iget-object v0, p1, Lu/aly/ar;->o:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ar;->o:Ljava/lang/String;

    .line 277
    :cond_b
    invoke-virtual {p1}, Lu/aly/ar;->Y()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 278
    iget-object v0, p1, Lu/aly/ar;->p:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ar;->p:Ljava/lang/String;

    .line 280
    :cond_c
    invoke-virtual {p1}, Lu/aly/ar;->ab()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 281
    iget-object p1, p1, Lu/aly/ar;->q:Ljava/lang/String;

    iput-object p1, p0, Lu/aly/ar;->q:Ljava/lang/String;

    :cond_d
    return-void
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

    .line 915
    :try_start_0
    iput-byte v0, p0, Lu/aly/ar;->O:B

    .line 916
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/ar;->a(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 918
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

    .line 906
    :try_start_0
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/ar;->b(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 908
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cn;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic ad()Lu/aly/dl;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ar;->s:Lu/aly/dl;

    return-object v0
.end method

.method static synthetic ae()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ar;->t:Lu/aly/db;

    return-object v0
.end method

.method static synthetic af()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ar;->u:Lu/aly/db;

    return-object v0
.end method

.method static synthetic ag()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ar;->v:Lu/aly/db;

    return-object v0
.end method

.method static synthetic ah()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ar;->w:Lu/aly/db;

    return-object v0
.end method

.method static synthetic ai()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ar;->x:Lu/aly/db;

    return-object v0
.end method

.method static synthetic aj()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ar;->y:Lu/aly/db;

    return-object v0
.end method

.method static synthetic ak()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ar;->z:Lu/aly/db;

    return-object v0
.end method

.method static synthetic al()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ar;->A:Lu/aly/db;

    return-object v0
.end method

.method static synthetic am()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ar;->B:Lu/aly/db;

    return-object v0
.end method

.method static synthetic an()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ar;->C:Lu/aly/db;

    return-object v0
.end method

.method static synthetic ao()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ar;->D:Lu/aly/db;

    return-object v0
.end method

.method static synthetic ap()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ar;->E:Lu/aly/db;

    return-object v0
.end method

.method static synthetic aq()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ar;->F:Lu/aly/db;

    return-object v0
.end method

.method static synthetic ar()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ar;->G:Lu/aly/db;

    return-object v0
.end method

.method static synthetic as()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ar;->H:Lu/aly/db;

    return-object v0
.end method

.method static synthetic at()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ar;->I:Lu/aly/db;

    return-object v0
.end method

.method static synthetic au()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ar;->J:Lu/aly/db;

    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 496
    iget-object v0, p0, Lu/aly/ar;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B()Lu/aly/bi;
    .locals 1

    .line 506
    iget-object v0, p0, Lu/aly/ar;->i:Lu/aly/bi;

    return-object v0
.end method

.method public C()V
    .locals 1

    const/4 v0, 0x0

    .line 515
    iput-object v0, p0, Lu/aly/ar;->i:Lu/aly/bi;

    return-void
.end method

.method public D()Z
    .locals 1

    .line 520
    iget-object v0, p0, Lu/aly/ar;->i:Lu/aly/bi;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E()Z
    .locals 1

    .line 530
    iget-boolean v0, p0, Lu/aly/ar;->j:Z

    return v0
.end method

.method public F()V
    .locals 2

    .line 540
    iget-byte v0, p0, Lu/aly/ar;->O:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ar;->O:B

    return-void
.end method

.method public G()Z
    .locals 2

    .line 545
    iget-byte v0, p0, Lu/aly/ar;->O:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public H()Z
    .locals 1

    .line 553
    iget-boolean v0, p0, Lu/aly/ar;->k:Z

    return v0
.end method

.method public I()V
    .locals 2

    .line 563
    iget-byte v0, p0, Lu/aly/ar;->O:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ar;->O:B

    return-void
.end method

.method public J()Z
    .locals 2

    .line 568
    iget-byte v0, p0, Lu/aly/ar;->O:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public K()Ljava/lang/String;
    .locals 1

    .line 576
    iget-object v0, p0, Lu/aly/ar;->l:Ljava/lang/String;

    return-object v0
.end method

.method public L()V
    .locals 1

    const/4 v0, 0x0

    .line 585
    iput-object v0, p0, Lu/aly/ar;->l:Ljava/lang/String;

    return-void
.end method

.method public M()Z
    .locals 1

    .line 590
    iget-object v0, p0, Lu/aly/ar;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public N()Ljava/lang/String;
    .locals 1

    .line 600
    iget-object v0, p0, Lu/aly/ar;->m:Ljava/lang/String;

    return-object v0
.end method

.method public O()V
    .locals 1

    const/4 v0, 0x0

    .line 609
    iput-object v0, p0, Lu/aly/ar;->m:Ljava/lang/String;

    return-void
.end method

.method public P()Z
    .locals 1

    .line 614
    iget-object v0, p0, Lu/aly/ar;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Q()J
    .locals 2

    .line 624
    iget-wide v0, p0, Lu/aly/ar;->n:J

    return-wide v0
.end method

.method public R()V
    .locals 2

    .line 634
    iget-byte v0, p0, Lu/aly/ar;->O:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ar;->O:B

    return-void
.end method

.method public S()Z
    .locals 2

    .line 639
    iget-byte v0, p0, Lu/aly/ar;->O:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public T()Ljava/lang/String;
    .locals 1

    .line 647
    iget-object v0, p0, Lu/aly/ar;->o:Ljava/lang/String;

    return-object v0
.end method

.method public U()V
    .locals 1

    const/4 v0, 0x0

    .line 656
    iput-object v0, p0, Lu/aly/ar;->o:Ljava/lang/String;

    return-void
.end method

.method public V()Z
    .locals 1

    .line 661
    iget-object v0, p0, Lu/aly/ar;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public W()Ljava/lang/String;
    .locals 1

    .line 671
    iget-object v0, p0, Lu/aly/ar;->p:Ljava/lang/String;

    return-object v0
.end method

.method public X()V
    .locals 1

    const/4 v0, 0x0

    .line 680
    iput-object v0, p0, Lu/aly/ar;->p:Ljava/lang/String;

    return-void
.end method

.method public Y()Z
    .locals 1

    .line 685
    iget-object v0, p0, Lu/aly/ar;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    .line 695
    iget-object v0, p0, Lu/aly/ar;->q:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)Lu/aly/ar$e;
    .locals 0

    .line 719
    invoke-static {p1}, Lu/aly/ar$e;->a(I)Lu/aly/ar$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lu/aly/ar;
    .locals 1

    .line 286
    new-instance v0, Lu/aly/ar;

    invoke-direct {v0, p0}, Lu/aly/ar;-><init>(Lu/aly/ar;)V

    return-object v0
.end method

.method public a(J)Lu/aly/ar;
    .locals 0

    .line 628
    iput-wide p1, p0, Lu/aly/ar;->n:J

    const/4 p1, 0x1

    .line 629
    invoke-virtual {p0, p1}, Lu/aly/ar;->p(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/ar;
    .locals 0

    .line 318
    iput-object p1, p0, Lu/aly/ar;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lu/aly/bi;)Lu/aly/ar;
    .locals 0

    .line 510
    iput-object p1, p0, Lu/aly/ar;->i:Lu/aly/bi;

    return-object p0
.end method

.method public a(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 723
    sget-object v0, Lu/aly/ar;->K:Ljava/util/Map;

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

    .line 333
    iput-object p1, p0, Lu/aly/ar;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public aa()V
    .locals 1

    const/4 v0, 0x0

    .line 704
    iput-object v0, p0, Lu/aly/ar;->q:Ljava/lang/String;

    return-void
.end method

.method public ab()Z
    .locals 1

    .line 709
    iget-object v0, p0, Lu/aly/ar;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ac()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 899
    iget-object v0, p0, Lu/aly/ar;->i:Lu/aly/bi;

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lu/aly/ar;->i:Lu/aly/bi;

    invoke-virtual {v0}, Lu/aly/bi;->j()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lu/aly/ar;
    .locals 0

    .line 342
    iput-object p1, p0, Lu/aly/ar;->b:Ljava/lang/String;

    return-object p0
.end method

.method public synthetic b(I)Lu/aly/co;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lu/aly/ar;->a(I)Lu/aly/ar$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Lu/aly/ar;->a:Ljava/lang/String;

    .line 292
    iput-object v0, p0, Lu/aly/ar;->b:Ljava/lang/String;

    .line 293
    iput-object v0, p0, Lu/aly/ar;->c:Ljava/lang/String;

    .line 294
    iput-object v0, p0, Lu/aly/ar;->d:Ljava/lang/String;

    .line 295
    iput-object v0, p0, Lu/aly/ar;->e:Ljava/lang/String;

    .line 296
    iput-object v0, p0, Lu/aly/ar;->f:Ljava/lang/String;

    .line 297
    iput-object v0, p0, Lu/aly/ar;->g:Ljava/lang/String;

    .line 298
    iput-object v0, p0, Lu/aly/ar;->h:Ljava/lang/String;

    .line 299
    iput-object v0, p0, Lu/aly/ar;->i:Lu/aly/bi;

    const/4 v1, 0x0

    .line 300
    invoke-virtual {p0, v1}, Lu/aly/ar;->k(Z)V

    .line 301
    iput-boolean v1, p0, Lu/aly/ar;->j:Z

    .line 302
    invoke-virtual {p0, v1}, Lu/aly/ar;->m(Z)V

    .line 303
    iput-boolean v1, p0, Lu/aly/ar;->k:Z

    .line 304
    iput-object v0, p0, Lu/aly/ar;->l:Ljava/lang/String;

    .line 305
    iput-object v0, p0, Lu/aly/ar;->m:Ljava/lang/String;

    .line 306
    invoke-virtual {p0, v1}, Lu/aly/ar;->p(Z)V

    const-wide/16 v1, 0x0

    .line 307
    iput-wide v1, p0, Lu/aly/ar;->n:J

    .line 308
    iput-object v0, p0, Lu/aly/ar;->o:Ljava/lang/String;

    .line 309
    iput-object v0, p0, Lu/aly/ar;->p:Ljava/lang/String;

    .line 310
    iput-object v0, p0, Lu/aly/ar;->q:Ljava/lang/String;

    return-void
.end method

.method public b(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 727
    sget-object v0, Lu/aly/ar;->K:Ljava/util/Map;

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

    .line 357
    iput-object p1, p0, Lu/aly/ar;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lu/aly/ar;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lu/aly/ar;
    .locals 0

    .line 366
    iput-object p1, p0, Lu/aly/ar;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 381
    iput-object p1, p0, Lu/aly/ar;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)Lu/aly/ar;
    .locals 0

    .line 390
    iput-object p1, p0, Lu/aly/ar;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 323
    iput-object v0, p0, Lu/aly/ar;->a:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 405
    iput-object p1, p0, Lu/aly/ar;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)Lu/aly/ar;
    .locals 0

    .line 414
    iput-object p1, p0, Lu/aly/ar;->e:Ljava/lang/String;

    return-object p0
.end method

.method public e(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 429
    iput-object p1, p0, Lu/aly/ar;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 328
    iget-object v0, p0, Lu/aly/ar;->a:Ljava/lang/String;

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

    .line 338
    iget-object v0, p0, Lu/aly/ar;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)Lu/aly/ar;
    .locals 0

    .line 438
    iput-object p1, p0, Lu/aly/ar;->f:Ljava/lang/String;

    return-object p0
.end method

.method public f(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 453
    iput-object p1, p0, Lu/aly/ar;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;)Lu/aly/ar;
    .locals 0

    .line 462
    iput-object p1, p0, Lu/aly/ar;->g:Ljava/lang/String;

    return-object p0
.end method

.method public synthetic g()Lu/aly/ch;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lu/aly/ar;->a()Lu/aly/ar;

    move-result-object v0

    return-object v0
.end method

.method public g(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 477
    iput-object p1, p0, Lu/aly/ar;->g:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;)Lu/aly/ar;
    .locals 0

    .line 486
    iput-object p1, p0, Lu/aly/ar;->h:Ljava/lang/String;

    return-object p0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 347
    iput-object v0, p0, Lu/aly/ar;->b:Ljava/lang/String;

    return-void
.end method

.method public h(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 501
    iput-object p1, p0, Lu/aly/ar;->h:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;)Lu/aly/ar;
    .locals 0

    .line 580
    iput-object p1, p0, Lu/aly/ar;->l:Ljava/lang/String;

    return-object p0
.end method

.method public i(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 525
    iput-object p1, p0, Lu/aly/ar;->i:Lu/aly/bi;

    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    .line 352
    iget-object v0, p0, Lu/aly/ar;->b:Ljava/lang/String;

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

    .line 362
    iget-object v0, p0, Lu/aly/ar;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)Lu/aly/ar;
    .locals 0

    .line 604
    iput-object p1, p0, Lu/aly/ar;->m:Ljava/lang/String;

    return-object p0
.end method

.method public j(Z)Lu/aly/ar;
    .locals 0

    .line 534
    iput-boolean p1, p0, Lu/aly/ar;->j:Z

    const/4 p1, 0x1

    .line 535
    invoke-virtual {p0, p1}, Lu/aly/ar;->k(Z)V

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lu/aly/ar;
    .locals 0

    .line 651
    iput-object p1, p0, Lu/aly/ar;->o:Ljava/lang/String;

    return-object p0
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    .line 371
    iput-object v0, p0, Lu/aly/ar;->c:Ljava/lang/String;

    return-void
.end method

.method public k(Z)V
    .locals 2

    .line 549
    iget-byte v0, p0, Lu/aly/ar;->O:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/ar;->O:B

    return-void
.end method

.method public l(Ljava/lang/String;)Lu/aly/ar;
    .locals 0

    .line 675
    iput-object p1, p0, Lu/aly/ar;->p:Ljava/lang/String;

    return-object p0
.end method

.method public l(Z)Lu/aly/ar;
    .locals 0

    .line 557
    iput-boolean p1, p0, Lu/aly/ar;->k:Z

    const/4 p1, 0x1

    .line 558
    invoke-virtual {p0, p1}, Lu/aly/ar;->m(Z)V

    return-object p0
.end method

.method public l()Z
    .locals 1

    .line 376
    iget-object v0, p0, Lu/aly/ar;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lu/aly/ar;->d:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)Lu/aly/ar;
    .locals 0

    .line 699
    iput-object p1, p0, Lu/aly/ar;->q:Ljava/lang/String;

    return-object p0
.end method

.method public m(Z)V
    .locals 2

    .line 572
    iget-byte v0, p0, Lu/aly/ar;->O:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/ar;->O:B

    return-void
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x0

    .line 395
    iput-object v0, p0, Lu/aly/ar;->d:Ljava/lang/String;

    return-void
.end method

.method public n(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 595
    iput-object p1, p0, Lu/aly/ar;->l:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public o(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 619
    iput-object p1, p0, Lu/aly/ar;->m:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public o()Z
    .locals 1

    .line 400
    iget-object v0, p0, Lu/aly/ar;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 410
    iget-object v0, p0, Lu/aly/ar;->e:Ljava/lang/String;

    return-object v0
.end method

.method public p(Z)V
    .locals 2

    .line 643
    iget-byte v0, p0, Lu/aly/ar;->O:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/ar;->O:B

    return-void
.end method

.method public q()V
    .locals 1

    const/4 v0, 0x0

    .line 419
    iput-object v0, p0, Lu/aly/ar;->e:Ljava/lang/String;

    return-void
.end method

.method public q(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 666
    iput-object p1, p0, Lu/aly/ar;->o:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public r(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 690
    iput-object p1, p0, Lu/aly/ar;->p:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public r()Z
    .locals 1

    .line 424
    iget-object v0, p0, Lu/aly/ar;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 434
    iget-object v0, p0, Lu/aly/ar;->f:Ljava/lang/String;

    return-object v0
.end method

.method public s(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 714
    iput-object p1, p0, Lu/aly/ar;->q:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public t()V
    .locals 1

    const/4 v0, 0x0

    .line 443
    iput-object v0, p0, Lu/aly/ar;->f:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 735
    invoke-virtual {p0}, Lu/aly/ar;->e()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "device_id:"

    .line 736
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    iget-object v1, p0, Lu/aly/ar;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    .line 738
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 740
    :cond_0
    iget-object v1, p0, Lu/aly/ar;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 744
    :goto_1
    invoke-virtual {p0}, Lu/aly/ar;->i()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v1, :cond_2

    const-string v1, ", "

    .line 745
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "idmd5:"

    .line 746
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    iget-object v1, p0, Lu/aly/ar;->b:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, "null"

    .line 748
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 750
    :cond_3
    iget-object v1, p0, Lu/aly/ar;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/4 v1, 0x0

    .line 754
    :cond_4
    invoke-virtual {p0}, Lu/aly/ar;->l()Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v1, :cond_5

    const-string v1, ", "

    .line 755
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "mac_address:"

    .line 756
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    iget-object v1, p0, Lu/aly/ar;->c:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, "null"

    .line 758
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 760
    :cond_6
    iget-object v1, p0, Lu/aly/ar;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const/4 v1, 0x0

    .line 764
    :cond_7
    invoke-virtual {p0}, Lu/aly/ar;->o()Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v1, :cond_8

    const-string v1, ", "

    .line 765
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v1, "open_udid:"

    .line 766
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    iget-object v1, p0, Lu/aly/ar;->d:Ljava/lang/String;

    if-nez v1, :cond_9

    const-string v1, "null"

    .line 768
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 770
    :cond_9
    iget-object v1, p0, Lu/aly/ar;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const/4 v1, 0x0

    .line 774
    :cond_a
    invoke-virtual {p0}, Lu/aly/ar;->r()Z

    move-result v3

    if-eqz v3, :cond_d

    if-nez v1, :cond_b

    const-string v1, ", "

    .line 775
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v1, "model:"

    .line 776
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    iget-object v1, p0, Lu/aly/ar;->e:Ljava/lang/String;

    if-nez v1, :cond_c

    const-string v1, "null"

    .line 778
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 780
    :cond_c
    iget-object v1, p0, Lu/aly/ar;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    const/4 v1, 0x0

    .line 784
    :cond_d
    invoke-virtual {p0}, Lu/aly/ar;->u()Z

    move-result v3

    if-eqz v3, :cond_10

    if-nez v1, :cond_e

    const-string v1, ", "

    .line 785
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const-string v1, "cpu:"

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    iget-object v1, p0, Lu/aly/ar;->f:Ljava/lang/String;

    if-nez v1, :cond_f

    const-string v1, "null"

    .line 788
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 790
    :cond_f
    iget-object v1, p0, Lu/aly/ar;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    const/4 v1, 0x0

    .line 794
    :cond_10
    invoke-virtual {p0}, Lu/aly/ar;->x()Z

    move-result v3

    if-eqz v3, :cond_13

    if-nez v1, :cond_11

    const-string v1, ", "

    .line 795
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v1, "os:"

    .line 796
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    iget-object v1, p0, Lu/aly/ar;->g:Ljava/lang/String;

    if-nez v1, :cond_12

    const-string v1, "null"

    .line 798
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 800
    :cond_12
    iget-object v1, p0, Lu/aly/ar;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    const/4 v1, 0x0

    .line 804
    :cond_13
    invoke-virtual {p0}, Lu/aly/ar;->A()Z

    move-result v3

    if-eqz v3, :cond_16

    if-nez v1, :cond_14

    const-string v1, ", "

    .line 805
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    const-string v1, "os_version:"

    .line 806
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    iget-object v1, p0, Lu/aly/ar;->h:Ljava/lang/String;

    if-nez v1, :cond_15

    const-string v1, "null"

    .line 808
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 810
    :cond_15
    iget-object v1, p0, Lu/aly/ar;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    const/4 v1, 0x0

    .line 814
    :cond_16
    invoke-virtual {p0}, Lu/aly/ar;->D()Z

    move-result v3

    if-eqz v3, :cond_19

    if-nez v1, :cond_17

    const-string v1, ", "

    .line 815
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    const-string v1, "resolution:"

    .line 816
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    iget-object v1, p0, Lu/aly/ar;->i:Lu/aly/bi;

    if-nez v1, :cond_18

    const-string v1, "null"

    .line 818
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 820
    :cond_18
    iget-object v1, p0, Lu/aly/ar;->i:Lu/aly/bi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_9
    const/4 v1, 0x0

    .line 824
    :cond_19
    invoke-virtual {p0}, Lu/aly/ar;->G()Z

    move-result v3

    if-eqz v3, :cond_1b

    if-nez v1, :cond_1a

    const-string v1, ", "

    .line 825
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    const-string v1, "is_jailbroken:"

    .line 826
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    iget-boolean v1, p0, Lu/aly/ar;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 830
    :cond_1b
    invoke-virtual {p0}, Lu/aly/ar;->J()Z

    move-result v3

    if-eqz v3, :cond_1d

    if-nez v1, :cond_1c

    const-string v1, ", "

    .line 831
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    const-string v1, "is_pirated:"

    .line 832
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    iget-boolean v1, p0, Lu/aly/ar;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 836
    :cond_1d
    invoke-virtual {p0}, Lu/aly/ar;->M()Z

    move-result v3

    if-eqz v3, :cond_20

    if-nez v1, :cond_1e

    const-string v1, ", "

    .line 837
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    const-string v1, "device_board:"

    .line 838
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    iget-object v1, p0, Lu/aly/ar;->l:Ljava/lang/String;

    if-nez v1, :cond_1f

    const-string v1, "null"

    .line 840
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 842
    :cond_1f
    iget-object v1, p0, Lu/aly/ar;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    const/4 v1, 0x0

    .line 846
    :cond_20
    invoke-virtual {p0}, Lu/aly/ar;->P()Z

    move-result v3

    if-eqz v3, :cond_23

    if-nez v1, :cond_21

    const-string v1, ", "

    .line 847
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    const-string v1, "device_brand:"

    .line 848
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    iget-object v1, p0, Lu/aly/ar;->m:Ljava/lang/String;

    if-nez v1, :cond_22

    const-string v1, "null"

    .line 850
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 852
    :cond_22
    iget-object v1, p0, Lu/aly/ar;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b
    const/4 v1, 0x0

    .line 856
    :cond_23
    invoke-virtual {p0}, Lu/aly/ar;->S()Z

    move-result v3

    if-eqz v3, :cond_25

    if-nez v1, :cond_24

    const-string v1, ", "

    .line 857
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    const-string v1, "device_manutime:"

    .line 858
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    iget-wide v3, p0, Lu/aly/ar;->n:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 862
    :cond_25
    invoke-virtual {p0}, Lu/aly/ar;->V()Z

    move-result v3

    if-eqz v3, :cond_28

    if-nez v1, :cond_26

    const-string v1, ", "

    .line 863
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    const-string v1, "device_manufacturer:"

    .line 864
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    iget-object v1, p0, Lu/aly/ar;->o:Ljava/lang/String;

    if-nez v1, :cond_27

    const-string v1, "null"

    .line 866
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 868
    :cond_27
    iget-object v1, p0, Lu/aly/ar;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_c
    const/4 v1, 0x0

    .line 872
    :cond_28
    invoke-virtual {p0}, Lu/aly/ar;->Y()Z

    move-result v3

    if-eqz v3, :cond_2b

    if-nez v1, :cond_29

    const-string v1, ", "

    .line 873
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    const-string v1, "device_manuid:"

    .line 874
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    iget-object v1, p0, Lu/aly/ar;->p:Ljava/lang/String;

    if-nez v1, :cond_2a

    const-string v1, "null"

    .line 876
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 878
    :cond_2a
    iget-object v1, p0, Lu/aly/ar;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d
    const/4 v1, 0x0

    .line 882
    :cond_2b
    invoke-virtual {p0}, Lu/aly/ar;->ab()Z

    move-result v2

    if-eqz v2, :cond_2e

    if-nez v1, :cond_2c

    const-string v1, ", "

    .line 883
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    const-string v1, "device_name:"

    .line 884
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    iget-object v1, p0, Lu/aly/ar;->q:Ljava/lang/String;

    if-nez v1, :cond_2d

    const-string v1, "null"

    .line 886
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 888
    :cond_2d
    iget-object v1, p0, Lu/aly/ar;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    :goto_e
    const-string v1, ")"

    .line 892
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 448
    iget-object v0, p0, Lu/aly/ar;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 458
    iget-object v0, p0, Lu/aly/ar;->g:Ljava/lang/String;

    return-object v0
.end method

.method public w()V
    .locals 1

    const/4 v0, 0x0

    .line 467
    iput-object v0, p0, Lu/aly/ar;->g:Ljava/lang/String;

    return-void
.end method

.method public x()Z
    .locals 1

    .line 472
    iget-object v0, p0, Lu/aly/ar;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .line 482
    iget-object v0, p0, Lu/aly/ar;->h:Ljava/lang/String;

    return-object v0
.end method

.method public z()V
    .locals 1

    const/4 v0, 0x0

    .line 491
    iput-object v0, p0, Lu/aly/ar;->h:Ljava/lang/String;

    return-void
.end method
