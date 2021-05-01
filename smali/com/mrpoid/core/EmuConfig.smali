.class public Lcom/mrpoid/core/EmuConfig;
.super Ljava/lang/Object;
.source "EmuConfig.java"


# static fields
.field public static final COMP_DEF:I = 0x0

.field public static final COMP_PTHREAD:I = 0x1

.field public static final FONT_ANDROID:I = 0x2

.field public static final FONT_SKY:I = 0x0

.field public static final FONT_TSF:I = 0x1

.field public static final SCALE_2X:I = 0x3

.field public static final SCALE_ORIGINAL:I = 0x0

.field public static final SCALE_PRO:I = 0x1

.field public static final SCALE_STRE:I = 0x2

.field private static instance:Lcom/mrpoid/core/EmuConfig;


# instance fields
.field public bgColor:I

.field public catchMenuButton:Z

.field public catchVolumeButton:Z

.field public compMode:I

.field public diyModel:Z

.field public enableKeyVirb:Z

.field public fontType:I

.field public fps:I

.field public fullScreen:Z

.field public g_scnh:I

.field public g_scnw:I

.field public heapSize:I

.field public midScreen:Z

.field public model:Ljava/lang/String;

.field public mrVm:Z

.field public mrpPause:Z

.field public padAlpha:I

.field public scaleFilter:Z

.field public scaleMode:I

.field public screenOn:Z

.field public showFps:Z

.field public useOpenGL:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf0

    .line 53
    iput v0, p0, Lcom/mrpoid/core/EmuConfig;->g_scnw:I

    const/16 v0, 0x140

    .line 54
    iput v0, p0, Lcom/mrpoid/core/EmuConfig;->g_scnh:I

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/mrpoid/core/EmuConfig;->fontType:I

    const/4 v1, 0x1

    .line 56
    iput v1, p0, Lcom/mrpoid/core/EmuConfig;->heapSize:I

    .line 57
    iput v1, p0, Lcom/mrpoid/core/EmuConfig;->scaleMode:I

    .line 58
    iput-boolean v1, p0, Lcom/mrpoid/core/EmuConfig;->scaleFilter:Z

    const v2, -0xf0f10

    .line 59
    iput v2, p0, Lcom/mrpoid/core/EmuConfig;->bgColor:I

    const/16 v2, 0x80

    .line 60
    iput v2, p0, Lcom/mrpoid/core/EmuConfig;->padAlpha:I

    .line 61
    iput-boolean v1, p0, Lcom/mrpoid/core/EmuConfig;->showFps:Z

    .line 62
    iput-boolean v0, p0, Lcom/mrpoid/core/EmuConfig;->midScreen:Z

    .line 63
    iput-boolean v1, p0, Lcom/mrpoid/core/EmuConfig;->screenOn:Z

    .line 64
    iput-boolean v0, p0, Lcom/mrpoid/core/EmuConfig;->enableKeyVirb:Z

    .line 65
    iput-boolean v0, p0, Lcom/mrpoid/core/EmuConfig;->mrpPause:Z

    const/16 v2, 0x1e

    .line 66
    iput v2, p0, Lcom/mrpoid/core/EmuConfig;->fps:I

    .line 67
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/mrpoid/core/EmuConfig;->compMode:I

    .line 68
    iput-boolean v0, p0, Lcom/mrpoid/core/EmuConfig;->diyModel:Z

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mrpoid/core/EmuConfig;->model:Ljava/lang/String;

    .line 70
    iput-boolean v0, p0, Lcom/mrpoid/core/EmuConfig;->mrVm:Z

    return-void
.end method

.method public static getInstance()Lcom/mrpoid/core/EmuConfig;
    .locals 1

    .line 166
    sget-object v0, Lcom/mrpoid/core/EmuConfig;->instance:Lcom/mrpoid/core/EmuConfig;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/mrpoid/core/EmuConfig;

    invoke-direct {v0}, Lcom/mrpoid/core/EmuConfig;-><init>()V

    sput-object v0, Lcom/mrpoid/core/EmuConfig;->instance:Lcom/mrpoid/core/EmuConfig;

    .line 168
    :cond_0
    sget-object v0, Lcom/mrpoid/core/EmuConfig;->instance:Lcom/mrpoid/core/EmuConfig;

    return-object v0
.end method


# virtual methods
.method getCfgPath()Ljava/io/File;
    .locals 5

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mr_cfg_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mrpoid/core/Emulator;->getInstance()Lcom/mrpoid/core/Emulator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mrpoid/core/Emulator;->getMrpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mythroad/.mrpoid/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    invoke-static {v1}, Lcom/edroid/common/utils/FileUtils;->checkParentPath(Ljava/io/File;)V

    return-object v1
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    .line 81
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "openGL"

    const/4 v1, 0x1

    .line 82
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mrpoid/core/EmuConfig;->useOpenGL:Z

    const-string v0, "memSize"

    const-string v2, "1"

    .line 83
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mrpoid/core/EmuConfig;->toInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mrpoid/core/EmuConfig;->heapSize:I

    .line 84
    iget v0, p0, Lcom/mrpoid/core/EmuConfig;->heapSize:I

    if-ge v0, v1, :cond_0

    .line 85
    iput v1, p0, Lcom/mrpoid/core/EmuConfig;->heapSize:I

    :cond_0
    const-string v0, "scaleMode"

    const-string v2, "1"

    .line 86
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mrpoid/core/EmuConfig;->toInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mrpoid/core/EmuConfig;->scaleMode:I

    const-string v0, "scaleFilter"

    .line 87
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mrpoid/core/EmuConfig;->scaleFilter:Z

    const-string v0, "fullScreen"

    const/4 v1, 0x0

    .line 88
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mrpoid/core/EmuConfig;->fullScreen:Z

    const-string v0, "showFPS"

    .line 89
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mrpoid/core/EmuConfig;->showFps:Z

    const-string v0, "midScreen"

    .line 90
    iget-boolean v1, p0, Lcom/mrpoid/core/EmuConfig;->midScreen:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mrpoid/core/EmuConfig;->midScreen:Z

    const-string v0, "screenOn"

    .line 91
    iget-boolean v1, p0, Lcom/mrpoid/core/EmuConfig;->screenOn:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mrpoid/core/EmuConfig;->screenOn:Z

    const-string v0, "keyVirb"

    .line 92
    iget-boolean v1, p0, Lcom/mrpoid/core/EmuConfig;->enableKeyVirb:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mrpoid/core/EmuConfig;->enableKeyVirb:Z

    const-string v0, "pause"

    .line 93
    iget-boolean v1, p0, Lcom/mrpoid/core/EmuConfig;->mrpPause:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mrpoid/core/EmuConfig;->mrpPause:Z

    const-string v0, "diyModel"

    .line 94
    iget-boolean v1, p0, Lcom/mrpoid/core/EmuConfig;->diyModel:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mrpoid/core/EmuConfig;->diyModel:Z

    const-string v0, "mrVm"

    .line 95
    iget-boolean v1, p0, Lcom/mrpoid/core/EmuConfig;->mrVm:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mrpoid/core/EmuConfig;->mrVm:Z

    const-string v0, "model"

    .line 97
    iget-object v1, p0, Lcom/mrpoid/core/EmuConfig;->model:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/core/EmuConfig;->model:Ljava/lang/String;

    const-string v0, "fontType"

    const-string v1, "0"

    .line 99
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mrpoid/core/EmuConfig;->toInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mrpoid/core/EmuConfig;->fontType:I

    const-string v0, "fps"

    const-string v1, "30"

    .line 100
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mrpoid/core/EmuConfig;->toInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mrpoid/core/EmuConfig;->fps:I

    const-string v0, "compMode"

    .line 101
    iget v1, p0, Lcom/mrpoid/core/EmuConfig;->compMode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mrpoid/core/EmuConfig;->toInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/mrpoid/core/EmuConfig;->compMode:I

    return-void
.end method

.method public read(Landroid/content/Context;)V
    .locals 7

    .line 140
    :try_start_0
    invoke-virtual {p0}, Lcom/mrpoid/core/EmuConfig;->getCfgPath()Ljava/io/File;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_2

    .line 144
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/edroid/common/utils/FileUtils;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    .line 147
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, p1, v2

    .line 148
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 150
    :cond_1
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 152
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    if-ne v5, v6, :cond_2

    goto :goto_1

    .line 154
    :cond_2
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 155
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 156
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void

    :catch_0
    move-exception p1

    .line 160
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return-void
.end method

.method public save(Landroid/content/Context;)V
    .locals 7

    .line 118
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 120
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 121
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 122
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 124
    :cond_0
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 126
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    if-ne v5, v6, :cond_1

    goto :goto_1

    .line 128
    :cond_1
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 129
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :cond_3
    invoke-virtual {p0}, Lcom/mrpoid/core/EmuConfig;->getCfgPath()Ljava/io/File;

    move-result-object v0

    .line 132
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/edroid/common/utils/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public setScreenSizeS(Ljava/lang/String;)V
    .locals 1

    const-string v0, "x"

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 106
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mrpoid/core/EmuConfig;->g_scnw:I

    const/4 v0, 0x1

    .line 107
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/mrpoid/core/EmuConfig;->g_scnh:I

    return-void
.end method

.method toInt(Ljava/lang/String;)I
    .locals 0

    .line 75
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
