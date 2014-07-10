.class public Lcom/android/internal/telephony/HuaweiQualcommRIL;
.super Lcom/android/internal/telephony/QualcommSharedRIL;
.source "HuaweiQualcommRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# instance fields
.field RILJ_LOGD:Z

.field RILJ_LOGV:Z

.field private final RIL_INT_RADIO_OFF:I

.field private final RIL_INT_RADIO_ON:I

.field private final RIL_INT_RADIO_ON_HTC:I

.field private final RIL_INT_RADIO_ON_NG:I

.field private final RIL_INT_RADIO_UNAVAILABLE:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    const/4 v1, 0x1

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/QualcommSharedRIL;-><init>(Landroid/content/Context;II)V

    .line 54
    iput-boolean v1, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->RILJ_LOGV:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->RILJ_LOGD:Z

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->RIL_INT_RADIO_OFF:I

    .line 58
    iput v1, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->RIL_INT_RADIO_UNAVAILABLE:I

    .line 59
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->RIL_INT_RADIO_ON:I

    .line 60
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->RIL_INT_RADIO_ON_NG:I

    .line 61
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->RIL_INT_RADIO_ON_HTC:I

    .line 65
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->mQANElements:I

    .line 66
    return-void
.end method

.method private setRadioStateFromRILInt(I)V
    .locals 6
    .parameter "stateCode"

    .prologue
    const/4 v4, 0x0

    .line 164
    sparse-switch p1, :sswitch_data_0

    .line 191
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized RIL_RadioState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 166
    :sswitch_0
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 167
    .local v2, radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iget-object v3, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->mIccHandler:Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;

    if-eqz v3, :cond_0

    .line 168
    iput-object v4, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->mIccThread:Landroid/os/HandlerThread;

    .line 169
    iput-object v4, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->mIccHandler:Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;

    .line 194
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/HuaweiQualcommRIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 195
    return-void

    .line 173
    .end local v2           #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_1
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 174
    .restart local v2       #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 178
    .end local v2           #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_2
    iget-object v3, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->mIccHandler:Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;

    if-nez v3, :cond_1

    .line 179
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "IccHandler"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, handlerThread:Landroid/os/HandlerThread;
    iput-object v0, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->mIccThread:Landroid/os/HandlerThread;

    .line 182
    iget-object v3, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->mIccThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 184
    iget-object v3, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->mIccThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 185
    .local v1, looper:Landroid/os/Looper;
    new-instance v3, Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;

    invoke-direct {v3, p0, p0, v1}, Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;-><init>(Lcom/android/internal/telephony/QualcommSharedRIL;Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->mIccHandler:Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;

    .line 186
    iget-object v3, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->mIccHandler:Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;->run()V

    .line 188
    .end local v0           #handlerThread:Landroid/os/HandlerThread;
    .end local v1           #looper:Landroid/os/Looper;
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 189
    .restart local v2       #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 164
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xa -> :sswitch_2
        0xd -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method protected getDataCallState(Landroid/os/Parcel;I)Lcom/android/internal/telephony/DataCallState;
    .locals 9
    .parameter "p"
    .parameter "version"

    .prologue
    const/4 v8, 0x0

    .line 257
    new-instance v1, Lcom/android/internal/telephony/DataCallState;

    invoke-direct {v1}, Lcom/android/internal/telephony/DataCallState;-><init>()V

    .line 259
    .local v1, dataCall:Lcom/android/internal/telephony/DataCallState;
    const-string v5, "datacall"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/HuaweiQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v4

    .line 261
    .local v4, oldRil:Z
    if-nez v4, :cond_1

    const/4 v5, 0x5

    if-ge p2, v5, :cond_1

    .line 262
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/QualcommSharedRIL;->getDataCallState(Landroid/os/Parcel;I)Lcom/android/internal/telephony/DataCallState;

    move-result-object v1

    .line 313
    .end local v1           #dataCall:Lcom/android/internal/telephony/DataCallState;
    :cond_0
    :goto_0
    return-object v1

    .line 263
    .restart local v1       #dataCall:Lcom/android/internal/telephony/DataCallState;
    :cond_1
    if-nez v4, :cond_6

    .line 264
    iput p2, v1, Lcom/android/internal/telephony/DataCallState;->version:I

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    .line 266
    const-string v5, "skipsuggestedretrytime"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/HuaweiQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/DataCallState;->suggestedRetryTime:I

    .line 269
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/DataCallState;->cid:I

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/DataCallState;->active:I

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/DataCallState;->type:Ljava/lang/String;

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    .line 273
    iget v5, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnection$FailCause;->getErrorCode()I

    move-result v6

    if-ne v5, v6, :cond_3

    iget-object v5, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, v1, Lcom/android/internal/telephony/DataCallState;->active:I

    if-eqz v5, :cond_3

    .line 275
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "getDataCallState, no ifname"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 277
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, addresses:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 279
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    .line 281
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, dnses:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 283
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    .line 285
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, gateways:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 287
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    goto/16 :goto_0

    .line 290
    .end local v0           #addresses:Ljava/lang/String;
    .end local v2           #dnses:Ljava/lang/String;
    .end local v3           #gateways:Ljava/lang/String;
    :cond_6
    const/4 v5, 0x4

    iput v5, v1, Lcom/android/internal/telephony/DataCallState;->version:I

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/DataCallState;->cid:I

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/DataCallState;->active:I

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/DataCallState;->type:Ljava/lang/String;

    .line 294
    iget-object v5, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->mLastDataIface:[Ljava/lang/String;

    iget v6, v1, Lcom/android/internal/telephony/DataCallState;->cid:I

    aget-object v5, v5, v6

    iput-object v5, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 297
    iget-object v5, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 298
    iget-object v5, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->mLastDataIface:[Ljava/lang/String;

    aget-object v5, v5, v8

    iput-object v5, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    .line 301
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 302
    .restart local v0       #addresses:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 303
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    .line 305
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 308
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v1, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    .line 309
    iget-object v5, v1, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "net."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".dns1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 310
    iget-object v5, v1, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "net."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".dns2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    goto/16 :goto_0
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 74
    const/16 v1, 0x1c

    invoke-static {v1, p9}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 77
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-boolean v1, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> iccIO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " aid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/HuaweiQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/HuaweiQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 95
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/HuaweiQualcommRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 96
    return-void
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 7
    .parameter "p"

    .prologue
    const/4 v6, 0x0

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 118
    .local v0, dataPosition:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 120
    .local v1, response:I
    sparse-switch v1, :sswitch_data_0

    .line 130
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 133
    invoke-super {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 156
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 121
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 137
    .local v2, ret:Ljava/lang/Object;
    :goto_1
    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    .line 139
    :sswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 140
    .local v3, state:I
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HuaweiQualcommRIL;->setRadioStateFromRILInt(I)V

    goto :goto_0

    .line 122
    .end local v2           #ret:Ljava/lang/Object;
    .end local v3           #state:I
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 123
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 124
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 125
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 126
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 146
    :sswitch_8
    iget-boolean v4, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->RILJ_LOGD:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/HuaweiQualcommRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 148
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_0

    .line 149
    iget-object v4, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 120
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x40a -> :sswitch_3
        0x40b -> :sswitch_4
        0x40c -> :sswitch_5
        0x40d -> :sswitch_6
        0x40e -> :sswitch_7
    .end sparse-switch

    .line 137
    :sswitch_data_1
    .sparse-switch
        0x3e8 -> :sswitch_2
        0x40b -> :sswitch_0
        0x40c -> :sswitch_0
        0x40d -> :sswitch_8
    .end sparse-switch
.end method

.method protected responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9
    .parameter "p"

    .prologue
    .line 202
    new-instance v3, Lcom/android/internal/telephony/IccCardStatus;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccCardStatus;-><init>()V

    .line 203
    .local v3, cardStatus:Lcom/android/internal/telephony/IccCardStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/IccCardStatus;->setCardState(I)V

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/IccCardStatus;->setUniversalPinState(I)V

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v3, Lcom/android/internal/telephony/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v3, Lcom/android/internal/telephony/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v3, Lcom/android/internal/telephony/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 213
    .local v5, numApplications:I
    const/16 v6, 0x8

    if-le v5, v6, :cond_0

    .line 214
    const/16 v5, 0x8

    .line 216
    :cond_0
    new-array v6, v5, [Lcom/android/internal/telephony/IccCardApplicationStatus;

    iput-object v6, v3, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    .line 218
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 219
    new-instance v1, Lcom/android/internal/telephony/IccCardApplicationStatus;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccCardApplicationStatus;-><init>()V

    .line 220
    .local v1, appStatus:Lcom/android/internal/telephony/IccCardApplicationStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin1_replaced:I

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 228
    iget-object v6, v3, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    aput-object v1, v6, v4

    .line 218
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 230
    .end local v1           #appStatus:Lcom/android/internal/telephony/IccCardApplicationStatus;
    :cond_1
    const/4 v0, -0x1

    .line 231
    .local v0, appIndex:I
    iget v6, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->mPhoneType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 232
    iget v0, v3, Lcom/android/internal/telephony/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 233
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This is a CDMA PHONE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :goto_1
    if-lez v5, :cond_3

    .line 240
    iget-object v6, v3, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    aget-object v2, v6, v0

    .line 241
    .local v2, application:Lcom/android/internal/telephony/IccCardApplicationStatus;
    iget-object v6, v2, Lcom/android/internal/telephony/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->mAid:Ljava/lang/String;

    .line 242
    iget-object v6, v2, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    sget-object v7, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne v6, v7, :cond_5

    const/4 v6, 0x1

    :goto_2
    iput-boolean v6, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->mUSIM:Z

    .line 244
    iget v6, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->mPreferredNetworkType:I

    iput v6, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->mSetPreferredNetworkType:I

    .line 246
    iget-object v6, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->mAid:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 247
    const-string v6, ""

    iput-object v6, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->mAid:Ljava/lang/String;

    .line 248
    :cond_2
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mAid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .end local v2           #application:Lcom/android/internal/telephony/IccCardApplicationStatus;
    :cond_3
    return-object v3

    .line 235
    :cond_4
    iget v0, v3, Lcom/android/internal/telephony/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 236
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This is a GSM PHONE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 242
    .restart local v2       #application:Lcom/android/internal/telephony/IccCardApplicationStatus;
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "operatorNumeric"
    .parameter "response"

    .prologue
    .line 101
    const/16 v1, 0x2f

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 105
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-boolean v1, p0, Lcom/android/internal/telephony/HuaweiQualcommRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/HuaweiQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/HuaweiQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 108
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/HuaweiQualcommRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 111
    return-void
.end method
