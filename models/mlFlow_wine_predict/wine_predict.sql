SELECT 
    fixed_acidity, 
    volatile_acidity, 
    citric_acid, 
    residual_sugar, 
    chlorides, 
    free_sulfur_dioxide, 
    total_sulfur_dioxide, 
    density, 
    pH, 
    sulphates, 
    alcohol,
    COLINT_DEMO.DBT_DEMOJUNE_CTHORNBURG.MLFLOW$WINE_QUALITY_MODEL(
        fixed_acidity, 
        volatile_acidity, 
        citric_acid, 
        residual_sugar, 
        chlorides, 
        free_sulfur_dioxide, 
        total_sulfur_dioxide, 
        density, 
        pH, 
        sulphates, 
        alcohol) AS predicted_quality
FROM 
    {{ ref('stg_wine') }}