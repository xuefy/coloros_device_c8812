.class Lcom/android/server/pm/PackageSettingBase;
.super Lcom/android/server/pm/GrantedPermissions;
.source "PackageSettingBase.java"


# static fields
.field private static final DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState; = null

.field static final PKG_INSTALL_COMPLETE:I = 0x1

.field static final PKG_INSTALL_INCOMPLETE:I


# instance fields
.field codePath:Ljava/io/File;

.field codePathString:Ljava/lang/String;

.field firstInstallTime:J

.field haveGids:Z

.field installStatus:I

.field installerPackageName:Ljava/lang/String;

.field lastUpdateTime:J

.field final name:Ljava/lang/String;

.field nativeLibraryPathString:Ljava/lang/String;

.field origPackage:Lcom/android/server/pm/PackageSettingBase;

.field permissionsFixed:Z

.field final realName:Ljava/lang/String;

.field resourcePath:Ljava/io/File;

.field resourcePathString:Ljava/lang/String;

.field signatures:Lcom/android/server/pm/PackageSignatures;

.field timeStamp:J

.field uidError:Z

.field private final userState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/PackageUserState;",
            ">;"
        }
    .end annotation
.end field

.field versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Landroid/content/pm/PackageUserState;

    invoke-direct {v0}, Landroid/content/pm/PackageUserState;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageSettingBase;)V
    .locals 5
    .parameter "base"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/pm/GrantedPermissions;-><init>(Lcom/android/server/pm/GrantedPermissions;)V

    .line 63
    new-instance v1, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v1}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 72
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    .line 74
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 95
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    .line 96
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    .line 97
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 98
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 99
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 100
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 101
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    .line 102
    iget-wide v1, p1, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    iput-wide v1, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 103
    iget-wide v1, p1, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    iput-wide v1, p0, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 104
    iget-wide v1, p1, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    iput-wide v1, p0, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    .line 105
    iget v1, p1, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    iput v1, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    .line 107
    iget-boolean v1, p1, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    iput-boolean v1, p0, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    .line 109
    new-instance v1, Lcom/android/server/pm/PackageSignatures;

    iget-object v2, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageSignatures;-><init>(Lcom/android/server/pm/PackageSignatures;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 111
    iget-boolean v1, p1, Lcom/android/server/pm/PackageSettingBase;->permissionsFixed:Z

    iput-boolean v1, p0, Lcom/android/server/pm/PackageSettingBase;->permissionsFixed:Z

    .line 112
    iget-boolean v1, p1, Lcom/android/server/pm/PackageSettingBase;->haveGids:Z

    iput-boolean v1, p0, Lcom/android/server/pm/PackageSettingBase;->haveGids:Z

    .line 113
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 114
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 115
    iget-object v2, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    new-instance v4, Landroid/content/pm/PackageUserState;

    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageUserState;

    invoke-direct {v4, v1}, Landroid/content/pm/PackageUserState;-><init>(Landroid/content/pm/PackageUserState;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    iget v1, p1, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    iput v1, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 120
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->origPackage:Lcom/android/server/pm/PackageSettingBase;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->origPackage:Lcom/android/server/pm/PackageSettingBase;

    .line 122
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 123
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V
    .locals 1
    .parameter "name"
    .parameter "realName"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "nativeLibraryPathString"
    .parameter "pVersionCode"
    .parameter "pkgFlags"

    .prologue
    .line 82
    invoke-direct {p0, p7}, Lcom/android/server/pm/GrantedPermissions;-><init>(I)V

    .line 63
    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 83
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    .line 85
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/android/server/pm/PackageSettingBase;->init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V

    .line 86
    return-void
.end method

.method private modifyUserState(I)Landroid/content/pm/PackageUserState;
    .locals 2
    .parameter "userId"

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageUserState;

    .line 181
    .local v0, state:Landroid/content/pm/PackageUserState;
    if-nez v0, :cond_0

    .line 182
    new-instance v0, Landroid/content/pm/PackageUserState;

    .end local v0           #state:Landroid/content/pm/PackageUserState;
    invoke-direct {v0}, Landroid/content/pm/PackageUserState;-><init>()V

    .line 183
    .restart local v0       #state:Landroid/content/pm/PackageUserState;
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 185
    :cond_0
    return-object v0
.end method


# virtual methods
.method addDisabledComponent(Ljava/lang/String;I)V
    .locals 2
    .parameter "componentClassName"
    .parameter "userId"

    .prologue
    .line 314
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 315
    return-void
.end method

.method addEnabledComponent(Ljava/lang/String;I)V
    .locals 2
    .parameter "componentClassName"
    .parameter "userId"

    .prologue
    .line 318
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 319
    return-void
.end method

.method public copyFrom(Lcom/android/server/pm/PackageSettingBase;)V
    .locals 4
    .parameter "base"

    .prologue
    .line 159
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->grantedPermissions:Ljava/util/HashSet;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->grantedPermissions:Ljava/util/HashSet;

    .line 160
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->gids:[I

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->gids:[I

    .line 161
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->revokedPermissions:Ljava/util/HashSet;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->revokedPermissions:Ljava/util/HashSet;

    .line 162
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->effectivePermissions:Ljava/util/HashSet;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->effectivePermissions:Ljava/util/HashSet;

    .line 164
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->revokedGids:[I

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->revokedGids:[I

    .line 166
    iget-wide v1, p1, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    iput-wide v1, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 167
    iget-wide v1, p1, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    iput-wide v1, p0, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 168
    iget-wide v1, p1, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    iput-wide v1, p0, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    .line 169
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 170
    iget-boolean v1, p1, Lcom/android/server/pm/PackageSettingBase;->permissionsFixed:Z

    iput-boolean v1, p0, Lcom/android/server/pm/PackageSettingBase;->permissionsFixed:Z

    .line 171
    iget-boolean v1, p1, Lcom/android/server/pm/PackageSettingBase;->haveGids:Z

    iput-boolean v1, p0, Lcom/android/server/pm/PackageSettingBase;->haveGids:Z

    .line 172
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 173
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_0
    iget v1, p1, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    iput v1, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 177
    return-void
.end method

.method disableComponentLPw(Ljava/lang/String;I)Z
    .locals 3
    .parameter "componentClassName"
    .parameter "userId"

    .prologue
    const/4 v0, 0x0

    .line 330
    const/4 v2, 0x1

    invoke-virtual {p0, p2, v2, v0}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 331
    .local v1, state:Landroid/content/pm/PackageUserState;
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 333
    .local v0, changed:Z
    :cond_0
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 334
    return v0
.end method

.method enableComponentLPw(Ljava/lang/String;I)Z
    .locals 3
    .parameter "componentClassName"
    .parameter "userId"

    .prologue
    const/4 v0, 0x0

    .line 322
    const/4 v2, 0x1

    invoke-virtual {p0, p2, v0, v2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 323
    .local v1, state:Landroid/content/pm/PackageUserState;
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 325
    .local v0, changed:Z
    :cond_0
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 326
    return v0
.end method

.method getCurrentEnabledStateLPr(Ljava/lang/String;I)I
    .locals 2
    .parameter "componentName"
    .parameter "userId"

    .prologue
    .line 347
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 348
    .local v0, state:Landroid/content/pm/PackageUserState;
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    const/4 v1, 0x1

    .line 354
    :goto_0
    return v1

    .line 350
    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    const/4 v1, 0x2

    goto :goto_0

    .line 354
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getDisabledComponents(I)Ljava/util/HashSet;
    .locals 1
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    return-object v0
.end method

.method getEnabled(I)I
    .locals 1
    .parameter "userId"

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageUserState;->enabled:I

    return v0
.end method

.method getEnabledComponents(I)Ljava/util/HashSet;
    .locals 1
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    return-object v0
.end method

.method public getInstallStatus()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    return v0
.end method

.method getInstalled(I)Z
    .locals 1
    .parameter "userId"

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->installed:Z

    return v0
.end method

.method getInstallerPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getNotLaunched(I)Z
    .locals 1
    .parameter "userId"

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    return v0
.end method

.method getStopped(I)Z
    .locals 1
    .parameter "userId"

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    return v0
.end method

.method init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V
    .locals 1
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "nativeLibraryPathString"
    .parameter "pVersionCode"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 128
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 130
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 131
    iput-object p3, p0, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    .line 132
    iput p4, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    .line 133
    return-void
.end method

.method isAnyInstalled([I)Z
    .locals 5
    .parameter "users"

    .prologue
    .line 221
    move-object v0, p1

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 222
    .local v3, user:I
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v4

    iget-boolean v4, v4, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v4, :cond_0

    .line 223
    const/4 v4, 0x1

    .line 226
    .end local v3           #user:I
    :goto_1
    return v4

    .line 221
    .restart local v3       #user:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v3           #user:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method isPrivacyGuard(I)Z
    .locals 1
    .parameter "userId"

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->privacyGuard:Z

    return v0
.end method

.method modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;
    .locals 3
    .parameter "userId"
    .parameter "disabled"
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    .line 303
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 304
    .local v0, state:Landroid/content/pm/PackageUserState;
    if-eqz p2, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    if-nez v1, :cond_0

    .line 305
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    .line 307
    :cond_0
    if-eqz p3, :cond_1

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    if-nez v1, :cond_1

    .line 308
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    .line 310
    :cond_1
    return-object v0
.end method

.method queryInstalledUsers([IZ)[I
    .locals 7
    .parameter "users"
    .parameter "installed"

    .prologue
    .line 230
    const/4 v3, 0x0

    .line 231
    .local v3, num:I
    move-object v0, p1

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v5, v0, v1

    .line 232
    .local v5, user:I
    invoke-virtual {p0, v5}, Lcom/android/server/pm/PackageSettingBase;->getInstalled(I)Z

    move-result v6

    if-ne v6, p2, :cond_0

    .line 233
    add-int/lit8 v3, v3, 0x1

    .line 231
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    .end local v5           #user:I
    :cond_1
    new-array v4, v3, [I

    .line 237
    .local v4, res:[I
    const/4 v3, 0x0

    .line 238
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    aget v5, v0, v1

    .line 239
    .restart local v5       #user:I
    invoke-virtual {p0, v5}, Lcom/android/server/pm/PackageSettingBase;->getInstalled(I)Z

    move-result v6

    if-ne v6, p2, :cond_2

    .line 240
    aput v5, v4, v3

    .line 241
    add-int/lit8 v3, v3, 0x1

    .line 238
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 244
    .end local v5           #user:I
    :cond_3
    return-object v4
.end method

.method public readUserState(I)Landroid/content/pm/PackageUserState;
    .locals 2
    .parameter "userId"

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageUserState;

    .line 190
    .local v0, state:Landroid/content/pm/PackageUserState;
    if-eqz v0, :cond_0

    .line 193
    .end local v0           #state:Landroid/content/pm/PackageUserState;
    :goto_0
    return-object v0

    .restart local v0       #state:Landroid/content/pm/PackageUserState;
    :cond_0
    sget-object v0, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    goto :goto_0
.end method

.method removeUser(I)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 360
    return-void
.end method

.method restoreComponentLPw(Ljava/lang/String;I)Z
    .locals 4
    .parameter "componentClassName"
    .parameter "userId"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 338
    invoke-virtual {p0, p2, v3, v3}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 339
    .local v1, state:Landroid/content/pm/PackageUserState;
    iget-object v3, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    if-eqz v3, :cond_1

    iget-object v3, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 341
    .local v0, changed:Z
    :goto_0
    iget-object v3, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    if-eqz v3, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    :cond_0
    or-int/2addr v0, v2

    .line 343
    return v0

    .end local v0           #changed:Z
    :cond_1
    move v0, v2

    .line 339
    goto :goto_0
.end method

.method setDisabledComponents(Ljava/util/HashSet;I)V
    .locals 1
    .parameter
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, components:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-object p1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    .line 290
    return-void
.end method

.method setDisabledComponentsCopy(Ljava/util/HashSet;I)V
    .locals 2
    .parameter
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p1, components:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    .line 300
    return-void

    .line 298
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setEnabled(II)V
    .locals 1
    .parameter "state"
    .parameter "userId"

    .prologue
    .line 197
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput p1, v0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 198
    return-void
.end method

.method setEnabledComponents(Ljava/util/HashSet;I)V
    .locals 1
    .parameter
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, components:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-object p1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    .line 286
    return-void
.end method

.method setEnabledComponentsCopy(Ljava/util/HashSet;I)V
    .locals 2
    .parameter
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, components:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    .line 295
    return-void

    .line 293
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInstallStatus(I)V
    .locals 0
    .parameter "newStatus"

    .prologue
    .line 144
    iput p1, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 145
    return-void
.end method

.method setInstalled(ZI)V
    .locals 1
    .parameter "inst"
    .parameter "userId"

    .prologue
    .line 213
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 214
    return-void
.end method

.method public setInstallerPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 137
    return-void
.end method

.method setNotLaunched(ZI)V
    .locals 1
    .parameter "stop"
    .parameter "userId"

    .prologue
    .line 260
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    .line 261
    return-void
.end method

.method setPrivacyGuard(ZI)V
    .locals 1
    .parameter "enabled"
    .parameter "userId"

    .prologue
    .line 205
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->privacyGuard:Z

    .line 206
    return-void
.end method

.method setStopped(ZI)V
    .locals 1
    .parameter "stop"
    .parameter "userId"

    .prologue
    .line 252
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    .line 253
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0
    .parameter "newStamp"

    .prologue
    .line 152
    iput-wide p1, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 153
    return-void
.end method

.method setUserState(IIZZZZLjava/util/HashSet;Ljava/util/HashSet;)V
    .locals 1
    .parameter "userId"
    .parameter "enabled"
    .parameter "installed"
    .parameter "stopped"
    .parameter "notLaunched"
    .parameter "privacyGuard"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZZZ",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p7, enabledComponents:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p8, disabledComponents:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 267
    .local v0, state:Landroid/content/pm/PackageUserState;
    iput p2, v0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 268
    iput-boolean p3, v0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 269
    iput-boolean p4, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    .line 270
    iput-boolean p5, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    .line 271
    iput-boolean p6, v0, Landroid/content/pm/PackageUserState;->privacyGuard:Z

    .line 272
    iput-object p7, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    .line 273
    iput-object p8, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    .line 274
    return-void
.end method
