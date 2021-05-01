.class public final enum Lu/aly/ar$e;
.super Ljava/lang/Enum;
.source "DeviceInfo.java"

# interfaces
.implements Lu/aly/co;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu/aly/ar$e;",
        ">;",
        "Lu/aly/co;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/ar$e;

.field public static final enum b:Lu/aly/ar$e;

.field public static final enum c:Lu/aly/ar$e;

.field public static final enum d:Lu/aly/ar$e;

.field public static final enum e:Lu/aly/ar$e;

.field public static final enum f:Lu/aly/ar$e;

.field public static final enum g:Lu/aly/ar$e;

.field public static final enum h:Lu/aly/ar$e;

.field public static final enum i:Lu/aly/ar$e;

.field public static final enum j:Lu/aly/ar$e;

.field public static final enum k:Lu/aly/ar$e;

.field public static final enum l:Lu/aly/ar$e;

.field public static final enum m:Lu/aly/ar$e;

.field public static final enum n:Lu/aly/ar$e;

.field public static final enum o:Lu/aly/ar$e;

.field public static final enum p:Lu/aly/ar$e;

.field public static final enum q:Lu/aly/ar$e;

.field private static final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lu/aly/ar$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic u:[Lu/aly/ar$e;


# instance fields
.field private final s:S

.field private final t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 79
    new-instance v0, Lu/aly/ar$e;

    const-string v1, "DEVICE_ID"

    const-string v2, "device_id"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v3, v2}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ar$e;->a:Lu/aly/ar$e;

    .line 80
    new-instance v0, Lu/aly/ar$e;

    const-string v1, "IDMD5"

    const-string v2, "idmd5"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4, v2}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ar$e;->b:Lu/aly/ar$e;

    .line 81
    new-instance v0, Lu/aly/ar$e;

    const-string v1, "MAC_ADDRESS"

    const-string v2, "mac_address"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5, v2}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ar$e;->c:Lu/aly/ar$e;

    .line 82
    new-instance v0, Lu/aly/ar$e;

    const-string v1, "OPEN_UDID"

    const-string v2, "open_udid"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6, v2}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ar$e;->d:Lu/aly/ar$e;

    .line 83
    new-instance v0, Lu/aly/ar$e;

    const-string v1, "MODEL"

    const-string v2, "model"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7, v2}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ar$e;->e:Lu/aly/ar$e;

    .line 84
    new-instance v0, Lu/aly/ar$e;

    const-string v1, "CPU"

    const-string v2, "cpu"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8, v2}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ar$e;->f:Lu/aly/ar$e;

    .line 85
    new-instance v0, Lu/aly/ar$e;

    const-string v1, "OS"

    const-string v2, "os"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v9, v2}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ar$e;->g:Lu/aly/ar$e;

    .line 86
    new-instance v0, Lu/aly/ar$e;

    const-string v1, "OS_VERSION"

    const-string v2, "os_version"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v9, v10, v2}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ar$e;->h:Lu/aly/ar$e;

    .line 87
    new-instance v0, Lu/aly/ar$e;

    const-string v1, "RESOLUTION"

    const-string v2, "resolution"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v10, v11, v2}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ar$e;->i:Lu/aly/ar$e;

    .line 88
    new-instance v0, Lu/aly/ar$e;

    const-string v1, "IS_JAILBROKEN"

    const-string v2, "is_jailbroken"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v11, v12, v2}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ar$e;->j:Lu/aly/ar$e;

    .line 89
    new-instance v0, Lu/aly/ar$e;

    const-string v1, "IS_PIRATED"

    const-string v2, "is_pirated"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v12, v13, v2}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ar$e;->k:Lu/aly/ar$e;

    .line 90
    new-instance v0, Lu/aly/ar$e;

    const-string v1, "DEVICE_BOARD"

    const-string v2, "device_board"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v13, v14, v2}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ar$e;->l:Lu/aly/ar$e;

    .line 91
    new-instance v0, Lu/aly/ar$e;

    const-string v1, "DEVICE_BRAND"

    const-string v2, "device_brand"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v14, v15, v2}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ar$e;->m:Lu/aly/ar$e;

    .line 92
    new-instance v0, Lu/aly/ar$e;

    const-string v1, "DEVICE_MANUTIME"

    const-string v2, "device_manutime"

    const/16 v14, 0xe

    invoke-direct {v0, v1, v15, v14, v2}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ar$e;->n:Lu/aly/ar$e;

    .line 93
    new-instance v0, Lu/aly/ar$e;

    const-string v1, "DEVICE_MANUFACTURER"

    const-string v2, "device_manufacturer"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v14, v15, v2}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ar$e;->o:Lu/aly/ar$e;

    .line 94
    new-instance v0, Lu/aly/ar$e;

    const-string v1, "DEVICE_MANUID"

    const-string v2, "device_manuid"

    const/16 v14, 0x10

    invoke-direct {v0, v1, v15, v14, v2}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ar$e;->p:Lu/aly/ar$e;

    .line 95
    new-instance v0, Lu/aly/ar$e;

    const-string v1, "DEVICE_NAME"

    const-string v2, "device_name"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v14, v15, v2}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ar$e;->q:Lu/aly/ar$e;

    const/16 v0, 0x11

    .line 78
    new-array v0, v0, [Lu/aly/ar$e;

    sget-object v1, Lu/aly/ar$e;->a:Lu/aly/ar$e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lu/aly/ar$e;->b:Lu/aly/ar$e;

    aput-object v1, v0, v3

    sget-object v1, Lu/aly/ar$e;->c:Lu/aly/ar$e;

    aput-object v1, v0, v4

    sget-object v1, Lu/aly/ar$e;->d:Lu/aly/ar$e;

    aput-object v1, v0, v5

    sget-object v1, Lu/aly/ar$e;->e:Lu/aly/ar$e;

    aput-object v1, v0, v6

    sget-object v1, Lu/aly/ar$e;->f:Lu/aly/ar$e;

    aput-object v1, v0, v7

    sget-object v1, Lu/aly/ar$e;->g:Lu/aly/ar$e;

    aput-object v1, v0, v8

    sget-object v1, Lu/aly/ar$e;->h:Lu/aly/ar$e;

    aput-object v1, v0, v9

    sget-object v1, Lu/aly/ar$e;->i:Lu/aly/ar$e;

    aput-object v1, v0, v10

    sget-object v1, Lu/aly/ar$e;->j:Lu/aly/ar$e;

    aput-object v1, v0, v11

    sget-object v1, Lu/aly/ar$e;->k:Lu/aly/ar$e;

    aput-object v1, v0, v12

    sget-object v1, Lu/aly/ar$e;->l:Lu/aly/ar$e;

    aput-object v1, v0, v13

    sget-object v1, Lu/aly/ar$e;->m:Lu/aly/ar$e;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lu/aly/ar$e;->n:Lu/aly/ar$e;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lu/aly/ar$e;->o:Lu/aly/ar$e;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lu/aly/ar$e;->p:Lu/aly/ar$e;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lu/aly/ar$e;->q:Lu/aly/ar$e;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lu/aly/ar$e;->u:[Lu/aly/ar$e;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/ar$e;->r:Ljava/util/Map;

    .line 100
    const-class v0, Lu/aly/ar$e;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/ar$e;

    .line 101
    sget-object v2, Lu/aly/ar$e;->r:Ljava/util/Map;

    invoke-virtual {v1}, Lu/aly/ar$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 170
    iput-short p3, p0, Lu/aly/ar$e;->s:S

    .line 171
    iput-object p4, p0, Lu/aly/ar$e;->t:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lu/aly/ar$e;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 143
    :pswitch_0
    sget-object p0, Lu/aly/ar$e;->q:Lu/aly/ar$e;

    return-object p0

    .line 141
    :pswitch_1
    sget-object p0, Lu/aly/ar$e;->p:Lu/aly/ar$e;

    return-object p0

    .line 139
    :pswitch_2
    sget-object p0, Lu/aly/ar$e;->o:Lu/aly/ar$e;

    return-object p0

    .line 137
    :pswitch_3
    sget-object p0, Lu/aly/ar$e;->n:Lu/aly/ar$e;

    return-object p0

    .line 135
    :pswitch_4
    sget-object p0, Lu/aly/ar$e;->m:Lu/aly/ar$e;

    return-object p0

    .line 133
    :pswitch_5
    sget-object p0, Lu/aly/ar$e;->l:Lu/aly/ar$e;

    return-object p0

    .line 131
    :pswitch_6
    sget-object p0, Lu/aly/ar$e;->k:Lu/aly/ar$e;

    return-object p0

    .line 129
    :pswitch_7
    sget-object p0, Lu/aly/ar$e;->j:Lu/aly/ar$e;

    return-object p0

    .line 127
    :pswitch_8
    sget-object p0, Lu/aly/ar$e;->i:Lu/aly/ar$e;

    return-object p0

    .line 125
    :pswitch_9
    sget-object p0, Lu/aly/ar$e;->h:Lu/aly/ar$e;

    return-object p0

    .line 123
    :pswitch_a
    sget-object p0, Lu/aly/ar$e;->g:Lu/aly/ar$e;

    return-object p0

    .line 121
    :pswitch_b
    sget-object p0, Lu/aly/ar$e;->f:Lu/aly/ar$e;

    return-object p0

    .line 119
    :pswitch_c
    sget-object p0, Lu/aly/ar$e;->e:Lu/aly/ar$e;

    return-object p0

    .line 117
    :pswitch_d
    sget-object p0, Lu/aly/ar$e;->d:Lu/aly/ar$e;

    return-object p0

    .line 115
    :pswitch_e
    sget-object p0, Lu/aly/ar$e;->c:Lu/aly/ar$e;

    return-object p0

    .line 113
    :pswitch_f
    sget-object p0, Lu/aly/ar$e;->b:Lu/aly/ar$e;

    return-object p0

    .line 111
    :pswitch_10
    sget-object p0, Lu/aly/ar$e;->a:Lu/aly/ar$e;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lu/aly/ar$e;
    .locals 1

    .line 163
    sget-object v0, Lu/aly/ar$e;->r:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu/aly/ar$e;

    return-object p0
.end method

.method public static b(I)Lu/aly/ar$e;
    .locals 3

    .line 154
    invoke-static {p0}, Lu/aly/ar$e;->a(I)Lu/aly/ar$e;

    move-result-object v0

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t exist!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/ar$e;
    .locals 1

    .line 78
    const-class v0, Lu/aly/ar$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu/aly/ar$e;

    return-object p0
.end method

.method public static values()[Lu/aly/ar$e;
    .locals 1

    .line 78
    sget-object v0, Lu/aly/ar$e;->u:[Lu/aly/ar$e;

    invoke-virtual {v0}, [Lu/aly/ar$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/ar$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .line 175
    iget-short v0, p0, Lu/aly/ar$e;->s:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lu/aly/ar$e;->t:Ljava/lang/String;

    return-object v0
.end method
