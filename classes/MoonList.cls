public with Sharing class MoonList {
    public List<SelectOption> Planets {get; set;}
    public string SelectedPlanet {get; set;}
    
    public MoonList() 
    {
    
    }
    
    public MoonList(ApexPages.StandardSetController controller)
    {
        GetAllPlanets();
    }
    
    
    public List<SelectOption> GetAllPlanets() {
        
        List<Planet__c> allPlanets = new List<Planet__c>();
        
        allPlanets= [SELECT Id, Name FROM Planet__c];
        
        Planets = new List<SelectOption>();
        Planets.add(new SelectOption('', ' - None -'));
        
        for (Planet__c planet : allPlanets)
            Planets.add(new SelectOption(planet.Id, planet.Name));
        
        return Planets;
    
    }
    
    //public 
}