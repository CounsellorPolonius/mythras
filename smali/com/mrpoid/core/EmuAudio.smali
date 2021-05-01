.class public final Lcom/mrpoid/core/EmuAudio;
.super Ljava/lang/Object;
.source "EmuAudio.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/mrpoid/core/MrDefines;


# static fields
.field public static final MR_MEDIA_ALLOC_INRAM:I = 0xdc

.field public static final MR_MEDIA_BUF_LOAD:I = 0xcb

.field public static final MR_MEDIA_CLOSE:I = 0xd0

.field public static final MR_MEDIA_CLOSE_MUTICHANNEL:I = 0xe1

.field public static final MR_MEDIA_FILE_LOAD:I = 0xca

.field public static final MR_MEDIA_FREE:I = 0xd8

.field public static final MR_MEDIA_FREE_INRAM:I = 0xdd

.field public static final MR_MEDIA_GETTIME:I = 0xd3

.field public static final MR_MEDIA_GET_CURTIME:I = 0xd5

.field public static final MR_MEDIA_GET_CURTIME_MSEC:I = 0xd7

.field public static final MR_MEDIA_GET_STATUS:I = 0xd1

.field public static final MR_MEDIA_GET_TOTAL_TIME:I = 0xd4

.field public static final MR_MEDIA_INIT:I = 0xc9

.field public static final MR_MEDIA_OPEN_MUTICHANNEL:I = 0xde

.field public static final MR_MEDIA_PAUSE_REQ:I = 0xcd

.field public static final MR_MEDIA_PLAY_CUR_REQ:I = 0xcc

.field public static final MR_MEDIA_PLAY_MUTICHANNEL:I = 0xdf

.field public static final MR_MEDIA_RESUME_REQ:I = 0xce

.field public static final MR_MEDIA_SETPOS:I = 0xd2

.field public static final MR_MEDIA_STOP_MUTICHANNEL:I = 0xe0

.field public static final MR_MEDIA_STOP_REQ:I = 0xcf

.field private static final TAG:Ljava/lang/String; = "EmuAudio"


# instance fields
.field private audioPaused:Z

.field private emulator:Lcom/mrpoid/core/Emulator;

.field private h:Landroid/os/Handler;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private mp3Player:Landroid/media/MediaPlayer;

.field private needCallback:Z

.field private pausePosition:I

.field private recyled:Z

.field private stat:I

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Lcom/mrpoid/core/Emulator;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/mrpoid/core/EmuAudio;->audioPaused:Z

    .line 50
    iput-boolean v0, p0, Lcom/mrpoid/core/EmuAudio;->recyled:Z

    .line 53
    iput-boolean v0, p0, Lcom/mrpoid/core/EmuAudio;->needCallback:Z

    const/16 v0, 0x3e9

    .line 55
    iput v0, p0, Lcom/mrpoid/core/EmuAudio;->stat:I

    .line 59
    iput-object p1, p0, Lcom/mrpoid/core/EmuAudio;->emulator:Lcom/mrpoid/core/Emulator;

    .line 61
    invoke-virtual {p1}, Lcom/mrpoid/core/Emulator;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/core/EmuAudio;->h:Landroid/os/Handler;

    .line 62
    invoke-virtual {p1}, Lcom/mrpoid/core/Emulator;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/mrpoid/core/EmuAudio;->vibrator:Landroid/os/Vibrator;

    .line 63
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/mrpoid/core/EmuAudio;->mp3Player:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public N2J_musicCMD(III)I
    .locals 5

    .line 228
    iget-boolean v0, p0, Lcom/mrpoid/core/EmuAudio;->recyled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xc9

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 231
    iget-object p1, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    .line 232
    iget-object p1, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 233
    iput-object v2, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 236
    :cond_1
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 237
    iget-object p1, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 238
    iget-object p1, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    const/16 p1, 0x3ea

    .line 239
    iput p1, p0, Lcom/mrpoid/core/EmuAudio;->stat:I

    return v1

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_3

    return v1

    :cond_3
    const/16 v0, 0x516

    if-eq p1, v0, :cond_8

    const/16 v0, 0x3eb

    const/16 v3, 0x3ed

    const/16 v4, 0x3ec

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_3

    .line 322
    :pswitch_0
    iget-object p1, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 323
    iput-object v2, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    const/16 p1, 0x3f0

    .line 324
    iput p1, p0, Lcom/mrpoid/core/EmuAudio;->stat:I

    goto/16 :goto_3

    .line 318
    :pswitch_1
    iget-object p1, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    goto/16 :goto_3

    .line 315
    :pswitch_2
    iget-object p1, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    div-int/lit16 v1, p1, 0x3e8

    goto/16 :goto_3

    .line 312
    :pswitch_3
    iget-object p1, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    div-int/lit16 v1, p1, 0x3e8

    goto/16 :goto_3

    .line 308
    :pswitch_4
    iget-object p1, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto/16 :goto_3

    .line 304
    :pswitch_5
    iget v1, p0, Lcom/mrpoid/core/EmuAudio;->stat:I

    goto/16 :goto_3

    .line 297
    :pswitch_6
    iget-object p1, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 298
    iget-object p1, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    const/16 p1, 0x3e9

    .line 299
    iput p1, p0, Lcom/mrpoid/core/EmuAudio;->stat:I

    goto/16 :goto_3

    .line 291
    :pswitch_7
    iget-object p1, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 292
    iput v0, p0, Lcom/mrpoid/core/EmuAudio;->stat:I

    goto :goto_3

    .line 282
    :pswitch_8
    iget p1, p0, Lcom/mrpoid/core/EmuAudio;->stat:I

    if-ne p1, v3, :cond_9

    .line 283
    iget-object p1, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    iget p2, p0, Lcom/mrpoid/core/EmuAudio;->pausePosition:I

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 284
    iget-object p1, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 285
    iput v4, p0, Lcom/mrpoid/core/EmuAudio;->stat:I

    goto :goto_3

    .line 273
    :pswitch_9
    iget p1, p0, Lcom/mrpoid/core/EmuAudio;->stat:I

    if-ne p1, v4, :cond_9

    .line 274
    iget-object p1, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    iput p1, p0, Lcom/mrpoid/core/EmuAudio;->pausePosition:I

    .line 275
    iget-object p1, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 276
    iput v3, p0, Lcom/mrpoid/core/EmuAudio;->stat:I

    goto :goto_3

    .line 250
    :pswitch_a
    iget p1, p0, Lcom/mrpoid/core/EmuAudio;->stat:I

    if-ne p1, v0, :cond_4

    .line 251
    iput v4, p0, Lcom/mrpoid/core/EmuAudio;->stat:I

    goto :goto_0

    .line 252
    :cond_4
    iget p1, p0, Lcom/mrpoid/core/EmuAudio;->stat:I

    if-ne p1, v3, :cond_5

    .line 253
    iget-object p1, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    iget v0, p0, Lcom/mrpoid/core/EmuAudio;->pausePosition:I

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 254
    iput v4, p0, Lcom/mrpoid/core/EmuAudio;->stat:I

    :cond_5
    :goto_0
    const/4 p1, 0x1

    if-ne p3, p1, :cond_7

    const-string p3, "EmuAudio"

    const-string v0, "need callback"

    .line 258
    invoke-static {p3, v0}, Lcom/mrpoid/core/EmuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iput-boolean p1, p0, Lcom/mrpoid/core/EmuAudio;->needCallback:Z

    .line 261
    iget-object p3, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    if-ne p2, p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p3, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_2

    .line 263
    :cond_7
    iput-boolean v1, p0, Lcom/mrpoid/core/EmuAudio;->needCallback:Z

    .line 266
    :goto_2
    iget-object p1, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 267
    iget-object p1, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_3

    .line 329
    :cond_8
    iget-object p1, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    int-to-float p2, p2

    const/high16 p3, 0x40a00000    # 5.0f

    div-float/2addr p2, p3

    invoke-virtual {p1, p2, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_9
    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0xcc
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xd7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public N2J_musicLoadFile(Ljava/lang/String;)V
    .locals 3

    .line 209
    iget-boolean v0, p0, Lcom/mrpoid/core/EmuAudio;->recyled:Z

    if-eqz v0, :cond_0

    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "EmuAudio"

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "musicLoadFile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mrpoid/core/EmuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 218
    iget-object p1, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    const/16 p1, 0x3eb

    .line 219
    iput p1, p0, Lcom/mrpoid/core/EmuAudio;->stat:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 221
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public N2J_playSound(Ljava/lang/String;I)V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio;->h:Landroid/os/Handler;

    new-instance v1, Lcom/mrpoid/core/EmuAudio$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mrpoid/core/EmuAudio$1;-><init>(Lcom/mrpoid/core/EmuAudio;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public N2J_startShake(I)V
    .locals 3

    .line 343
    iget-boolean v0, p0, Lcom/mrpoid/core/EmuAudio;->recyled:Z

    if-eqz v0, :cond_0

    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio;->vibrator:Landroid/os/Vibrator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public N2J_stopShake()V
    .locals 1

    .line 349
    iget-boolean v0, p0, Lcom/mrpoid/core/EmuAudio;->recyled:Z

    if-eqz v0, :cond_0

    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    return-void
.end method

.method public N2J_stopSound()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio;->h:Landroid/os/Handler;

    new-instance v1, Lcom/mrpoid/core/EmuAudio$2;

    invoke-direct {v1, p0}, Lcom/mrpoid/core/EmuAudio$2;-><init>(Lcom/mrpoid/core/EmuAudio;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method _playSound(Ljava/lang/String;I)V
    .locals 3

    .line 165
    iget-boolean v0, p0, Lcom/mrpoid/core/EmuAudio;->recyled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio;->mp3Player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_2

    .line 170
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/mrpoid/core/EmuAudio;->mp3Player:Landroid/media/MediaPlayer;

    :cond_2
    const-string v0, "EmuAudio"

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play sound :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mrpoid/core/EmuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio;->mp3Player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio;->mp3Player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 176
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio;->mp3Player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 179
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio;->mp3Player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 180
    iget-object p1, p0, Lcom/mrpoid/core/EmuAudio;->mp3Player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 181
    iget-object p1, p0, Lcom/mrpoid/core/EmuAudio;->mp3Player:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 182
    iget-object p1, p0, Lcom/mrpoid/core/EmuAudio;->mp3Player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 183
    iput-boolean v0, p0, Lcom/mrpoid/core/EmuAudio;->audioPaused:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 185
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method _stopSound()V
    .locals 2

    .line 198
    iget-boolean v0, p0, Lcom/mrpoid/core/EmuAudio;->recyled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "EmuAudio"

    const-string v1, "stop sound"

    .line 200
    invoke-static {v0, v1}, Lcom/mrpoid/core/EmuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio;->mp3Player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio;->mp3Player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 204
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio;->mp3Player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :cond_1
    return-void
.end method

.method public isRecyled()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/mrpoid/core/EmuAudio;->recyled:Z

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "EmuAudio"

    const-string v0, "onCompletion"

    .line 147
    invoke-static {p1, v0}, Lcom/mrpoid/core/EmuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3eb

    .line 149
    iput p1, p0, Lcom/mrpoid/core/EmuAudio;->stat:I

    .line 150
    iget-boolean p1, p0, Lcom/mrpoid/core/EmuAudio;->needCallback:Z

    if-eqz p1, :cond_0

    .line 151
    iget-object p1, p0, Lcom/mrpoid/core/EmuAudio;->emulator:Lcom/mrpoid/core/Emulator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mrpoid/core/Emulator;->sendAudioCallbak(I)V

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    const-string p1, "EmuAudio"

    const-string v0, "onError(%d, %d)"

    const/4 v1, 0x2

    .line 137
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mrpoid/core/EmuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-boolean p1, p0, Lcom/mrpoid/core/EmuAudio;->needCallback:Z

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/mrpoid/core/EmuAudio;->emulator:Lcom/mrpoid/core/Emulator;

    invoke-virtual {p1, p3}, Lcom/mrpoid/core/Emulator;->sendAudioCallbak(I)V

    :cond_0
    return v2
.end method

.method public pause()V
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/mrpoid/core/EmuAudio;->recyled:Z

    if-eqz v0, :cond_0

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio;->mp3Player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/mrpoid/core/EmuAudio;->audioPaused:Z

    .line 99
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio;->mp3Player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    return-void
.end method

.method public declared-synchronized recyle()V
    .locals 2

    monitor-enter p0

    .line 73
    :try_start_0
    iget-boolean v0, p0, Lcom/mrpoid/core/EmuAudio;->recyled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 74
    monitor-exit p0

    return-void

    .line 76
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio;->mp3Player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio;->mp3Player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 78
    iput-object v1, p0, Lcom/mrpoid/core/EmuAudio;->mp3Player:Landroid/media/MediaPlayer;

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 83
    iput-object v1, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 88
    iput-object v1, p0, Lcom/mrpoid/core/EmuAudio;->vibrator:Landroid/os/Vibrator;

    :cond_3
    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/mrpoid/core/EmuAudio;->recyled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 72
    monitor-exit p0

    throw v0
.end method

.method public resume()V
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/mrpoid/core/EmuAudio;->recyled:Z

    if-eqz v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget-boolean v0, p0, Lcom/mrpoid/core/EmuAudio;->audioPaused:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/mrpoid/core/EmuAudio;->audioPaused:Z

    .line 113
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio;->mp3Player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/mrpoid/core/EmuAudio;->recyled:Z

    if-eqz v0, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio;->mp3Player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio;->mp3Player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 126
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio;->mp3Player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/mrpoid/core/EmuAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_2
    return-void
.end method
