.class public Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SqlDatabaseHelper.java"


# static fields
.field static final DATABASE_NAME:Ljava/lang/String; = "imsconfig.db"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ImsConfigSqlDbHelper"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    const-string v0, "imsconfig.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 27
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method private createConfigSettingTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 48
    const-string v0, "CREATE TABLE tb_config_setting (_id INTEGER PRIMARY KEY AUTOINCREMENT,phone_id INTEGER NOT NULL,setting_id INTEGER NOT NULL,value TEXT NOT NULL,CONSTRAINT unique_id UNIQUE (phone_id, setting_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private createDefaultTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 71
    const-string v0, "CREATE TABLE tb_default (_id INTEGER PRIMARY KEY AUTOINCREMENT,phone_id INTEGER NOT NULL,config_id INTEGER NOT NULL,mimetype_id INTEGER NOT NULL,unit_id INTEGER,data TEXT NOT NULL,CONSTRAINT unique_id UNIQUE (phone_id, config_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method private createFeatureTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 59
    const-string v0, "CREATE TABLE tb_feature (_id INTEGER PRIMARY KEY AUTOINCREMENT,phone_id INTEGER NOT NULL,feature_id INTEGER NOT NULL,network_id INTEGER NOT NULL,value INTEGER NOT NULL,CONSTRAINT unique_id UNIQUE (phone_id, feature_id, network_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method private createMasterTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 97
    const-string v0, "CREATE TABLE tb_master (_id INTEGER PRIMARY KEY AUTOINCREMENT,phone_id INTEGER NOT NULL,config_id INTEGER NOT NULL,mimetype_id INTEGER NOT NULL,data TEXT,CONSTRAINT unique_id UNIQUE (phone_id, config_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method private createProvisionTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 84
    const-string v0, "CREATE TABLE tb_provision (_id INTEGER PRIMARY KEY AUTOINCREMENT,phone_id INTEGER NOT NULL,config_id INTEGER NOT NULL,mimetype_id INTEGER NOT NULL,data TEXT NOT NULL,datetime DATETIME DEFAULT CURRENT_TIMESTAMP,CONSTRAINT unique_id UNIQUE (phone_id, config_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method private createResourceTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 109
    const-string v0, "CREATE TABLE tb_resource (_id INTEGER PRIMARY KEY AUTOINCREMENT,phone_id INTEGER NOT NULL,feature_id INTEGER NOT NULL,value INTEGER NOT NULL,CONSTRAINT unique_id UNIQUE (phone_id, feature_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method private dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 120
    const-string v0, "DROP TABLE IF EXISTS tb_config_setting"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 121
    const-string v0, "DROP TABLE IF EXISTS tb_feature"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 122
    const-string v0, "DROP TABLE IF EXISTS tb_default"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 123
    const-string v0, "DROP TABLE IF EXISTS tb_provision"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 124
    const-string v0, "DROP TABLE IF EXISTS tb_master"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 125
    const-string v0, "DROP TABLE IF EXISTS tb_resource"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 126
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 32
    invoke-direct {p0, p1}, Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;->createConfigSettingTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;->createFeatureTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;->createProvisionTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;->createMasterTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;->createDefaultTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;->createResourceTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 38
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgrading database from version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigSqlDbHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-direct {p0, p1}, Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;->dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 45
    return-void
.end method
